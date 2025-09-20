package vault

import (
	"fmt"
	"testing"
)

func TestDataEncrypt(t *testing.T) {
	text := "Hello NFT"
	password := "test01"
	result, err := EncryptText([]byte(text), password)
	//fmt.Printf("got encrypted text: %v\n", result)
	if err != nil {
		t.Errorf("error at encrypt text %s", err)
	}
	if len(result) == 0 {
		t.Error("Result is empty")
	}
}

func TestDataDecrypt(t *testing.T) {
	originText := "Hello NFT"
	//encryptedText := "041c63affd2ac70c3df2c870732869bd0d0adf2ff497070707"
	encryptedText := []byte("70ed721200a9c84b4dd236ff3dda2925620e59020bbd854f97")
	pass := "test01"

	result, err := DecryptText(encryptedText, pass)

	if err != nil {
		t.Errorf("error at decrypt text %s", err)
	}
	if len(result) == 0 {
		t.Error("Result is empty")
	}

	fmt.Printf("\n got decrypted text: %v\n", result)
	if string(result) != originText {
		t.Errorf(" got %v want %v", result, originText)
	}

}
