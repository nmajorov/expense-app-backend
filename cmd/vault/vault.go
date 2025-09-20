package vault

import (
	"bytes"
	"errors"
	"fmt"
	"os"
	"strings"

	"github.com/spf13/cobra"
	"golang.org/x/term"
)

var encrypt bool
var decrypt bool

// password for silent encryption or decryption
var password string

var filePath string

// Ask for manual password input password
func AskPassword() string {

	if password == "" {
		// if no silent password specified ask for it
		fmt.Print("\n Enter Password: ")
		bytePassword, err := term.ReadPassword(0)
		if err != nil {
			panic(fmt.Sprintf("error at reading password: %v", err))
		}

		fmt.Print("\n Enter Password Again: ")
		bytePasswordRepeat, err := term.ReadPassword(0)
		if err != nil {
			panic(fmt.Sprintf("error at reading password: %v", err))
		}

		if bytes.Compare(bytePassword, bytePasswordRepeat) != 0 {
			panic("entered passwords didn't match")
		}

		password = string(bytePassword)
		fmt.Print("\n")
	}

	return strings.TrimSpace(password)
}

// GetApplyCommand returns the `apply` cobra Command
func GetVaultCommand(a []string) *cobra.Command {
	cmd := &cobra.Command{
		Use:   "vault",
		Short: "Vault operation on files.",
		Long: `Encrypt and decrypt configuration file as vault resource. 

	tradergo vault -e -f config.yaml

`,
	}

	//flags
	cmd.Flags().BoolVarP(&encrypt, "encrypt", "e", false, "encrypt operation")
	cmd.Flags().BoolVarP(&decrypt, "decrypt", "d", false, "decrypt operation")
	cmd.Flags().StringVarP(&filePath, "file", "f", "", "file to de/encrypt")
	cmd.Flags().StringVar(&password, "password", "", "optional password for silent operation")

	cmd.MarkFlagRequired("file")

	cmd.RunE = func(cmd *cobra.Command, args []string) error {

		var data []byte

		if !encrypt && !decrypt {
			return errors.New("set operation either encrypt or decrypt ")

		}

		//read file
		dataBytes, err := os.ReadFile(filePath)
		if err != nil {
			return err
		}

		//check if decrypt of encrypt
		if encrypt {

			fmt.Printf("start encrypting...\n")
			data, err = EncryptText(dataBytes, AskPassword())

			if err != nil {
				return err
			}

		}

		if decrypt {

			data, err = DecryptText(dataBytes, AskPassword())
			fmt.Printf("start decrypting...\n")
			if err != nil {
				return err
			}

		}

		err = os.WriteFile(filePath, data, 0644)

		return err

	}

	return cmd
}
