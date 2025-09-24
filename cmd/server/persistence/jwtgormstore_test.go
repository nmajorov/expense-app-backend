package persistence

import (
	"net/http"
	"testing"
	"time"

	jwt "github.com/golang-jwt/jwt/v5"
	"github.com/nmajorov/expense-app-backend/cmd/server/utils"
	"github.com/nmajorov/expense-app-backend/config"
	"github.com/nmajorov/expense-app-backend/logger"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

func TestJWTStore_Get(t *testing.T) {
	config := &config.Config{
		Database: config.Database{
			Type:          "sqlite3",
			ConnectionURL: "file::memory:?cache=shared",
		},
		Web: config.Web{
			PortWeb: 7000,
			Verbose: false,
		},
		JWT: config.JWT{
			MaxAgeHours: 24,
			SigningKey:  "keymaker",
		},
	}

	db, err := gorm.Open(sqlite.Open(config.ConnectionURL), &gorm.Config{})
	if err != nil {
		t.Fatalf("failed to connect database: %v", err)
	}

	store := New(db, config)

	username := "testuser"

	token, err := store.Get(username)
	if err != nil {
		t.Errorf("JWTStore.Get() error = %v, wantErr %v", err, false)
	}

	logger.AppLogger.Infof("get token: %v", token)

	if token == "" {
		t.Error("Expected token, got empty string")
	}

	claims, err := utils.VerifyJWTToken(token, config.JWT.SigningKey)
	if err != nil {
		t.Fatalf("verifyJWTToken() returned an unexpected error: %v", err)
	}

	if claims.(jwt.MapClaims)["user"] != username {
		t.Errorf("Expected user %s, got %s", username, claims.(jwt.MapClaims)["user"])
	}

}

func TestJWTStore_getJWTFromHeader(t *testing.T) {
	config := &config.Config{
		Database: config.Database{
			Type:          "sqlite3",
			ConnectionURL: "file::memory:?cache=shared",
		},
		Web: config.Web{
			PortWeb: 7000,
			Verbose: false,
		},
		JWT: config.JWT{
			MaxAgeHours: 24,
			SigningKey:  "keymaker",
		},
	}

	db, err := gorm.Open(sqlite.Open(config.ConnectionURL), &gorm.Config{})
	if err != nil {
		t.Fatalf("failed to connect database: %v", err)
	}

	store := New(db, config)

	username := "testuser"

	token, err := store.Get(username)

	if token == "" {
		t.Error("Expected token, got empty string")
	}

	if err != nil {
		t.Errorf("JWTStore.Get() error = %v, wantErr %v", err, false)
	}

	logger.AppLogger.Infof("get token: %v", token)

	claims, err := utils.VerifyJWTToken(token, config.JWT.SigningKey)
	if err != nil {
		t.Fatalf("utils.VerifyJWTToken() failed: %v", err)
	}
	jti := claims.(jwt.MapClaims)["jti"].(string)

	// Save the JWT to the database
	jwtRecord := &gormJWT{
		ID:        jti,
		Data:      token,
		ExpiresAt: time.Now().Add(time.Hour),
	}
	if err := db.Create(jwtRecord).Error; err != nil {
		t.Fatalf("failed to create jwt record: %v", err)
	}

	req, _ := http.NewRequest("GET", "/", nil)
	req.Header.Set("Authorization", "Bearer "+token)

	gormJWT := store.getJWTFromHeader(req)
	if gormJWT == nil {
		t.Fatal("expected gormJWT, got nil")
	}

	if gormJWT.ID != jti {
		t.Errorf("expected jti %s, got %s", jti, gormJWT.ID)
	}

	// 2. Test with no Authorization header
	req, _ = http.NewRequest("GET", "/", nil)
	gormJWT = store.getJWTFromHeader(req)
	if gormJWT != nil {
		t.Fatal("expected nil, got gormJWT")
	}

	// 3. Test with a malformed Authorization header
	req, _ = http.NewRequest("GET", "/", nil)
	req.Header.Set("Authorization", "Bearer")
	gormJWT = store.getJWTFromHeader(req)
	if gormJWT != nil {
		t.Fatal("expected nil, got gormJWT")
	}

	// 5. Test with a token with a jti that doesn't exist in the database
	tokenWithNonExistentJti, err := store.Get("anotheruser")
	if err != nil {
		t.Fatalf("store.Get() failed: %v", err)
	}
	req, _ = http.NewRequest("GET", "/", nil)
	req.Header.Set("Authorization", "Bearer "+tokenWithNonExistentJti)
	gormJWT = store.getJWTFromHeader(req)
	if gormJWT != nil {
		t.Fatal("expected nil, got gormJWT")
	}
}
