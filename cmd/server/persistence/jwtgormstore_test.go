package persistence

import (
	"testing"

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
