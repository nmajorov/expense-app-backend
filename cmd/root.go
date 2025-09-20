// Package cmd
package cmd

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/MakeNowJust/heredoc/v2"
	"github.com/nmajorov/expense-app-backend/cmd/server"

	"github.com/nmajorov/expense-app-backend/cmd/vault"

	"github.com/nmajorov/expense-app-backend/config"

	log "github.com/nmajorov/expense-app-backend/logger"
	"github.com/spf13/cobra"
)

var logger = log.AppLogger

var cliLong = heredoc.Doc(`

Crypto trader Client
--------------------
This client helps you trade cryptocurrencies as  margin on brokers.
It also includes the vault commands for encrypt and decrypt a
configuration file under the 'vault' subcommand.`)

// configuration file
var cfgFile string

// rootCmd represents the base command when called without any subcommands
var rootCmd = &cobra.Command{
	Use:   "tradergo",
	Short: "An application to trader cryptos",
	Long:  cliLong,
	Run: func(cmd *cobra.Command, args []string) {
		//	flagNrSet := cmd.Flags().NFlag()

		//	if flagNrSet < 1 {
		//		_ = cmd.Help()

		//		return
		//	}

		conf := initConfig()

		s := server.NewServer(conf)
		s.Run()

		//		binanceClient := binance.NewClient(conf.Key, conf.Secret)
	},
}

// Execute adds all child commands to the root command and sets flags appropriately.
// This is called by main.main(). It only needs to happen once to the rootCmd.
func Execute() {
	if err := rootCmd.Execute(); err != nil {
		_, _ = fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func init() {
	//cobra.OnInitialize(initConfig)

	// Here you will define your flags and configuration settings.
	// Cobra supports persistent flags, which, if defined here,
	// will be global for your application.

	rootCmd.Flags().StringVarP(&cfgFile, "config", "c", "", "config file (default is ./tradergo.yaml)")
	rootCmd.AddCommand(vault.GetVaultCommand(os.Args))
}

// initConfig reads in config file and ENV variables if set.
func initConfig() *config.Config {

	var data []byte
	var err error = nil
	var filePath string
	var isEnvSet bool
	var passwd string

	if cfgFile == "" {
		// Use config file from the flag.
		//fmt.Println("No configuration provided... searching for default configuration")
		cfgFile = "./tradergo.yaml"
	}

	filePath, isEnvSet = os.LookupEnv("TRADERGO_CONFIG_FILE")

	if !isEnvSet {
		logger.Warn("env TRADERGO_CONFIG_FILE not provided")
		// Find current directory.
		filePath, err = filepath.Abs(cfgFile)

	}

	logger.Info(fmt.Sprintf("loading from config file: %s", filePath))

	cobra.CheckErr(err)

	//read file
	data, err = os.ReadFile(filePath)
	if err != nil {
		panic(fmt.Errorf("can't read file %v", err))
	}

	passwd = "geneva2021"

	// passwd := vault.AskPassword()

	decryptedText, err := vault.DecryptText(data, passwd)
	if err != nil {
		panic("can't decrypt text")
	}

	conf := config.Init(string(decryptedText))

	return conf

}
