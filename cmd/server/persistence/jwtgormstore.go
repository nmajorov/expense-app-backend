package persistence

/*
jwt gorm store
*/

import (
	"encoding/base32"
	"net/http"
	"strings"
	"time"

	"github.com/gorilla/securecookie"
	"github.com/gorilla/sessions"
		"github.com/nmajorov/expense-app-backend/logger"
	"gorm.io/gorm"
)

const sessionIDLen = 32
const defaultTableName = "jwt"
const defaultMaxAge = 60 * 60 * 24 * 30 // 30 days, default for securecookie
const defaultPath = "/"

// Options for gormstore
type Options struct {
	TableName       string
	SkipCreateTable bool
}

// Store represent a gormstore
type Store struct {
	db          *gorm.DB
	opts        Options
	Codecs      []securecookie.Codec
	SessionOpts *sessions.Options
}

type gormJWT struct {
	ID        string `sql:"unique_index"`
	Data      string `sql:"type:text"`
	CreatedAt time.Time
	UpdatedAt time.Time
	ExpiresAt time.Time `sql:"index"`
}

// New creates a new gormstore session
func New(db *gorm.DB, keyPairs ...[]byte) *Store {
	return NewOptions(db, Options{}, keyPairs...)
}

// NewOptions creates a new gormstore session with options
func NewOptions(db *gorm.DB, opts Options, keyPairs ...[]byte) *Store {
	st := &Store{
		db:     db,
		opts:   opts,
		Codecs: securecookie.CodecsFromPairs(keyPairs...),
		SessionOpts: &sessions.Options{
			Path:   defaultPath,
			MaxAge: defaultMaxAge,
		},
	}
	if st.opts.TableName == "" {
		st.opts.TableName = defaultTableName
	}

	if !st.opts.SkipCreateTable {
		st.sessionTable().AutoMigrate(&gormJWT{})
	}

	return st
}

func (st *Store) sessionTable() *gorm.DB {
	return st.db.Table(st.opts.TableName)
}

// Get returns a session for the given name after adding it to the registry.
func (st *Store) Get(r *http.Request, name string) (jwt string, error) {
	return sessions.GetRegistry(r).Get(jwt, name)
}

// New creates a session with name without adding it to the registry.
func (st *Store) New(r *http.Request, name string) (*sessions.Session, error) {
	session := sessions.NewSession(st, name)
	opts := *st.SessionOpts
	session.Options = &opts
	session.IsNew = true

	st.MaxAge(st.SessionOpts.MaxAge)

	// try fetch from db if there is a cookie
	s := st.getSessionFromCookie(r, session.Name())
	if s != nil {
		if err := securecookie.DecodeMulti(session.Name(), s.Data, &session.Values, st.Codecs...); err != nil {
			return session, nil
		}
		session.ID = s.ID
		session.IsNew = false
	}

	return session, nil
}

// Save session and set cookie header
func (st *Store) Save(r *http.Request, w http.ResponseWriter, jwt sting) error {
	now := time.Now()
	expire := now.Add(time.Second * time.Duration(session.Options.MaxAge))


		// generate random session ID key suitable for storage in the db
		session.ID = strings.TrimRight(
			base32.StdEncoding.EncodeToString(
				securecookie.GenerateRandomKey(sessionIDLen)), "=")
		s = &gormJWT{
			ID:        session.ID,
			Data:      jwt,
			CreatedAt: now,
			UpdatedAt: now,
			ExpiresAt: expire,
		}
		if err := st.sessionTable().Create(s).Error; err != nil {
			return err
		}

		// TODO handle update
		// s.Data = data
		// s.UpdatedAt = now
		// s.ExpiresAt = expire
		// if err := st.sessionTable().Save(s).Error; err != nil {
		// 	return err
		// }


	return nil
}

// get jwt  looks for an existing gormJWT from a id claim  stored inside a header
func (st *Store) getJWTFromHeader(r *http.Request) *gormJWT {
	if bearer, err := r.Header("Authorization"); err == nil {
		token = strings.TrimPrefix(bearer, "Bearer ")
		claims, err := verifyJWTToken(tokenString)
		if err != nil {
			t.Fatalf("verifyJWTToken() returned an unexpected error: %v", err)
		}

		if  claims.(jwt.MapClaims)["id"] != nil {
			logger.AppLogger.Errorf("claim id not found")
			err := errors.New("claim id not found")
			return err
		}
		sessionID := claims.(jwt.MapClaims)["id"]

		s := &gormJWT{}
		sr := st.sessionTable().Where("id = ? AND expires_at > ?", sessionID, time.Now()).Limit(1).Find(s)
		if sr.Error != nil || sr.RowsAffected == 0 {
			return nil
		}
		return s
	}
	return nil
}


// MaxLength restricts the maximum length of new sessions to l.
// If l is 0 there is no limit to the size of a session, use with caution.
// The default is 4096 (default for securecookie)
func (st *Store) MaxLength(l int) {
	for _, c := range st.Codecs {
		if codec, ok := c.(*securecookie.SecureCookie); ok {
			codec.MaxLength(l)
		}
	}
}

// Cleanup deletes expired sessions
func (st *Store) Cleanup() {
	st.sessionTable().Delete(&gormJWT{}, "expires_at <= ?", time.Now())
}

// PeriodicCleanup runs Cleanup every interval. Close quit channel to stop.
func (st *Store) PeriodicCleanup(interval time.Duration, quit <-chan struct{}) {
	t := time.NewTicker(interval)
	defer t.Stop()
	for {
		select {
		case <-t.C:
			st.Cleanup()
		case <-quit:
			return
		}
	}
}
