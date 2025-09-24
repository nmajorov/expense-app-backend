package utils

import (
	"testing"
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
