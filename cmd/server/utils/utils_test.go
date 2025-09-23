package utils

import (
	"testing"

	jwt "github.com/golang-jwt/jwt/v5"
	"github.com/nmajorov/expense-app-backend/logger"
)

func TestHashPassword(t *testing.T) {
	password := "mySuperSecretPassword123"

	hash, err := HashPassword(password)

	// 1. Test for unexpected errors
	if err != nil {
		t.Fatalf("HashPassword() returned an unexpected error: %v", err)
	}

	// 2. Test that the hash is not empty
	if hash == "" {
		t.Fatal("HashPassword() returned an empty string, expected a hash.")
	}

	// 3. Test that the hash is not the same as the password
	if hash == password {
		t.Fatal("HashPassword() returned the original password, not a hash.")
	}
}

func TestCheckPasswordHash(t *testing.T) {
	password := "mySuperSecretPassword123"
	wrongPassword := "notTheRightPassword"

	hash, err := HashPassword(password)
	if err != nil {
		t.Fatalf("Setup failed: could not hash password for testing: %v", err)
	}

	t.Run("Correct password", func(t *testing.T) {
		if !CheckPasswordHash(password, hash) {
			t.Errorf("CheckPasswordHash() = false, want true for correct password")
		}
	})

	t.Run("Incorrect password", func(t *testing.T) {
		if CheckPasswordHash(wrongPassword, hash) {
			t.Errorf("CheckPasswordHash() = true, want false for incorrect password")
		}
	})

	t.Run("Malformed hash", func(t *testing.T) {
		if CheckPasswordHash(password, "thisisnotavalidhash") {
			t.Errorf("CheckPasswordHash() = true, want false for a malformed hash")
		}
	})
}

func TestJWTToken(t *testing.T) {
	name := "neo"
	role := "admin"

	tokenString, err := getJWTToken(name, role)
	logger.AppLogger.Infof("token string : %v", tokenString)
	if err != nil {
		t.Fatalf("getJWTToken() returned an unexpected error: %v", err)
	}

	claims, err := verifyJWTToken(tokenString)
	if err != nil {
		t.Fatalf("verifyJWTToken() returned an unexpected error: %v", err)
	}

	for k, v := range claims.(jwt.MapClaims) {
		logger.AppLogger.Infof("claims: %v, value: %v", k, v)
	}

	// Not the best way to do this, but it works for now
	if claims.(jwt.MapClaims)["name"] != name {
		t.Errorf("Expected name %s, got %s", name, claims.(jwt.MapClaims)["name"])
	}
	// Not the best way to do this, but it works for now
	if claims.(jwt.MapClaims)["role"] != role {
		t.Errorf("Expected role %s, got %s", role, claims.(jwt.MapClaims)["role"])
	}
}
