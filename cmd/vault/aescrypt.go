package vault

import (
	"crypto/aes"
	"crypto/cipher"
	"crypto/rand"
	"encoding/hex"
	"io"
)

// EncryptText encrypt text with aes cipher using password
func EncryptText(in []byte, password string) ([]byte, error) {
	key := []byte(password)
	if len(key) < aes.BlockSize {
		key = appendByte(key, aes.BlockSize)
	}
	c, err := aes.NewCipher(key)
	if err != nil {
		return []byte{}, err
	}

	// The IV needs to be unique, but not secure. Therefore it's common to
	// include it at the beginning of the ciphertext.
	out := make([]byte, aes.BlockSize+len(in))
	iv := out[:aes.BlockSize]
	if _, err := io.ReadFull(rand.Reader, iv); err != nil {
		panic(err)
	}

	stream := cipher.NewCFBEncrypter(c, iv)
	stream.XORKeyStream(out[aes.BlockSize:], in)

	result := hex.EncodeToString(out)
	return []byte(result), nil
}

// DecryptText decrypt text by using password
func DecryptText(in []byte, password string) ([]byte, error) {

	ciphertext, _ := hex.DecodeString(string(in))

	key := []byte(password)
	if len(key) < aes.BlockSize {
		key = appendByte(key, aes.BlockSize)
	}

	c, err := aes.NewCipher(key)
	if err != nil {
		return make([]byte, 0), err
	}

	// The IV needs to be unique, but not secure. Therefore it's common to
	// include it at the beginning of the ciphertext.
	if len(ciphertext) < aes.BlockSize {
		panic("ciphertext too short , is this file encrypted ?")
	}
	iv := ciphertext[:aes.BlockSize]
	ciphertext = ciphertext[aes.BlockSize:]

	stream := cipher.NewCFBDecrypter(c, iv)

	// XORKeyStream can work in-place if the two arguments are the same.
	stream.XORKeyStream(ciphertext, ciphertext)
	//fmt.Printf("ciphertext %v decode: %v", ciphertext, hex.EncodeToString(ciphertext))

	return ciphertext, nil
}

// appendByte  add byte to slice to size needed
func appendByte(slice []byte, toSize int) []byte {
	m := len(slice)

	n := toSize - m
	if n > cap(slice) { // if necessary, reallocate
		// allocate double what's needed, for future growth.
		newSlice := make([]byte, n)
		copy(newSlice, slice)
		slice = newSlice
	}
	for len(slice)%toSize != 0 {
		var bt byte

		slice = append(slice, bt)
	}
	return slice
}
