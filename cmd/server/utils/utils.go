package utils

import (
	jwt "github.com/golang-jwt/jwt/v5"
	"golang.org/x/crypto/bcrypt"
)

// HashPassword takes a plaintext password and returns the bcrypt hash.
func HashPassword(password string) (string, error) {
	bytes, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
	return string(bytes), err
}

// CheckPasswordHash compares a plaintext password with a stored bcrypt hash.
func CheckPasswordHash(password, hash string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(hash), []byte(password))
	return err == nil
}

func VerifyJWTToken(tokenString string, sigKey string) (jwt.Claims, error) {
	signingKey := []byte(sigKey)
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		return signingKey, nil
	})
	if err != nil {
		return nil, err
	}
	return token.Claims, err
}
