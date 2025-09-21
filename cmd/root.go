// Package cmd
package cmd

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/MakeNowJust/heredoc/v2"
	"github.com/nmajorov/expense-app-backend/cmd/server"

	"github.com/nmajorov/expense-app-backend/config"

	log "github.com/nmajorov/expense-app-backend/logger"
	"github.com/spf13/cobra"
)

var logger = log.AppLogger

var cliLong = heredoc.Doc(`

demo app backend Client
--------------------
`)

// configuration file
var cfgFile string

// rootCmd represents the base command when called without any subcommands
var rootCmd = &cobra.Command{
	Use:   "expense-app-backend",
	Short: "An application",
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

	rootCmd.Flags().StringVarP(&cfgFile, "config", "c", "", "config file (default is ./config.yaml)")

}

// initConfig reads in config file and ENV variables if set.
func initConfig() *config.Config {

	var data []byte
	var err error = nil
	var filePath string
	var isEnvSet bool

	if cfgFile == "" {
		// Use config file from the flag.
		//fmt.Println("No configuration provided... searching for default configuration")
		cfgFile = "./config.yaml"
	}

	filePath, isEnvSet = os.LookupEnv("EXPENSE_APP_CONFIG_FILE")

	if !isEnvSet {
		logger.Warn("env EXPENSE_APP_CONFIG_FILE not provided")
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

	conf := config.Init(string(data))

	return conf

}
