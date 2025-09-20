// test vault command line tool
package cmd

import (
	"bytes"
	"fmt"
	"os"
	"testing"

	"github.com/nmajorov/expense-app-backend/config"
	"github.com/spf13/cobra"
	"gopkg.in/yaml.v2"
)

func executeCommand(root *cobra.Command, args ...string) (output string, err error) {
	_, output, err = executeCommandC(root, args...)
	return output, err
}

func executeCommandC(root *cobra.Command, args ...string) (c *cobra.Command, output string, err error) {
	buf := new(bytes.Buffer)
	root.SetOut(buf)
	root.SetErr(buf)
	root.SetArgs(args)

	c, err = root.ExecuteC()

	return c, buf.String(), err
}

func Test_Vault_Command(t *testing.T) {

	//create temp file and save config in it
	tmp_file, _ := os.CreateTemp("", "test_vault.yaml")

	fmt.Printf("temp file created:  %v\n", tmp_file.Name())
	defer os.Remove(tmp_file.Name())

	// create config
	conf := &config.Config{

		Database: config.Database{},
	}

	//get config as bytes
	confBytes, _ := yaml.Marshal(conf)

	os.WriteFile(tmp_file.Name(), confBytes, 0666)

	tmp_file_not_encrypted, _ := os.ReadFile(tmp_file.Name())

	fmt.Printf("temp file content not encrypted:\n  %s\n", string(tmp_file_not_encrypted))

	//encrypt tmp file
	output, err := executeCommand(rootCmd, "vault", "-e", "--file", tmp_file.Name(), "--password", "test")
	if output != "" {
		t.Errorf("Unexpected output: %v", output)
	}

	if err != nil {
		t.Errorf("Unexpected error: %v", err)
	}

	//read file again it check if it is encrypted
	tmp_file_encrypted, _ := os.ReadFile(tmp_file.Name())

	fmt.Printf("temp file content encrypted:\n  %s\n", string(tmp_file_encrypted))

	if len(tmp_file_encrypted) == 0 {
		t.Fatalf("encrypted file is empty")
	}
}
