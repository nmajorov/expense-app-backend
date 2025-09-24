package persistence

/*
jwt gorm JWTStore
*/

import (
	"encoding/base32"
	"net/http"
	"strings"
	"time"

	jwt "github.com/golang-jwt/jwt/v5"
	"github.com/gorilla/securecookie"
	"github.com/nmajorov/expense-app-backend/cmd/server/utils"
	"github.com/nmajorov/expense-app-backend/config"
	"github.com/nmajorov/expense-app-backend/logger"
	"gorm.io/gorm"
)

const sessionIDLen = 32
const defaultTableName = "jwt"
const defaultPath = "/"

// Options for gormJWTStore
type Options struct {
	TableName       string
	SkipCreateTable bool
	signingKey      string
	MaxAgeHours     time.Duration
}

// JWTStore represent a gormJWTStore
type JWTStore struct {
	db   *gorm.DB
	opts *Options
}

type gormJWT struct {
	ID        string `sql:"unique_index"`
	Data      string `sql:"type:text"`
	CreatedAt time.Time
	UpdatedAt time.Time
	ExpiresAt time.Time `sql:"index"`
}

// New creates a new gormJWTStore session
func New(db *gorm.DB, conf *config.Config) *JWTStore {

	opt := new(Options)
	opt.MaxAgeHours = time.Duration(conf.JWT.MaxAgeHours) * time.Hour
	opt.signingKey = conf.JWT.SigningKey
	return &JWTStore{db, opt}
}

func (st *JWTStore) sessionTable() *gorm.DB {
	return st.db.Table(st.opts.TableName)
}

// Get returns a jwt for the given username name
func (st *JWTStore) Get(username string) (jwtToken string, err error) {
	signingKey := []byte(st.opts.signingKey) // TODO: move to config

	type MyCustomClaims struct {
		User string `json:"user"`
		Role string `json:"role"`
		jwt.RegisteredClaims
	}

	// Create claims with multiple fields populated
	claims := MyCustomClaims{
		username,
		"user",
		jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(time.Duration(st.opts.MaxAgeHours * time.Hour))),
			IssuedAt:  jwt.NewNumericDate(time.Now()),
			Issuer:    "majorov.biz",
			ID:        base32.StdEncoding.EncodeToString(securecookie.GenerateRandomKey(len(username))),
			Audience:  []string{"somebody_else"},
		},
	}

	// Create the token with claims
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)

	// Sign the token and return it
	jwtToken, err = token.SignedString(signingKey)
	if err != nil {
		return "", err
	}

	return jwtToken, nil
}

// Save session and set cookie header
func (st *JWTStore) Save(r *http.Request, w http.ResponseWriter, jwt string) error {
	//	now := time.Now()
	//	expire := now.Add(time.Second * time.Duration(Options.MaxAge))

	// // generate random session ID key suitable for storage in the db
	// session.ID = strings.TrimRight(
	// 	base32.StdEncoding.EncodeToString(
	// 		securecookie.GenerateRandomKey(sessionIDLen)), "=")
	// s = &gormJWT{
	// 	ID:        session.ID,
	// 	Data:      jwt,
	// 	CreatedAt: now,
	// 	UpdatedAt: now,
	// 	ExpiresAt: expire,
	// }
	// if err := st.sessionTable().Create(s).Error; err != nil {
	// 	return err
	// }

	// TODO handle update
	// s.Data = data
	// s.UpdatedAt = now
	// s.ExpiresAt = expire
	// if err := st.sessionTable().Save(s).Error; err != nil {
	// 	return err
	// }

	return nil
}

// get jwt  looks for an existing gormJWT from a id claim  JWTStored inside a header
func (st *JWTStore) getJWTFromHeader(r *http.Request) *gormJWT {
	if bearer := r.Header.Get("Authorization"); bearer != "" {
		token := strings.TrimPrefix(bearer, "Bearer ")
		claims, err := utils.VerifyJWTToken(token, st.opts.signingKey)
		if err != nil {
			logger.AppLogger.Fatalf("verifyJWTToken() returned an unexpected error: %v", err)
		}

		if claims.(jwt.MapClaims)["jti"] == nil {
			logger.AppLogger.Errorf("ID claim id not found")

			return nil
		}
		jwtID := claims.(jwt.MapClaims)["jti"]

		s := &gormJWT{}
		sr := st.sessionTable().Where("id = ? AND expires_at > ?", jwtID, time.Now()).Limit(1).Find(s)
		if sr.Error != nil || sr.RowsAffected == 0 {
			return nil
		}
		return s
	}
	return nil
}

// Cleanup deletes expired sessions
func (st *JWTStore) Cleanup() {
	st.sessionTable().Delete(&gormJWT{}, "expires_at <= ?", time.Now())
}

// PeriodicCleanup runs Cleanup every interval. Close quit channel to stop.
func (st *JWTStore) PeriodicCleanup(interval time.Duration, quit <-chan struct{}) {
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
