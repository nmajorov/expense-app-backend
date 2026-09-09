package config

import (
	"os"

	"github.com/nmajorov/expense-app-backend/logger"
	"gopkg.in/yaml.v2"
)

// Web define web server settings
type Web struct {
	PortWeb int64 `yaml:"port"`
	Verbose bool  `yaml:"verbose,omitempty"`
}

type JWT struct {
	MaxAgeHours int64  `yaml:"maxAgeHours"`
	SigningKey  string `yaml:"signingKey"`
}

// Database define configuration
// of database connection string
type Database struct {
	Type          string `yaml:"type"`
	ConnectionURL string `yaml:"connectionUrl"`
	User          string `yaml:"user,omitempty"`
	Passwd        string `yaml:"passwd,omitempty"`
}

// ServerConfig represent configuration of api  server
type Config struct {
	Database `yaml:"database"`
	JWT
	Web
}

var log = logger.AppLogger

// read configuration from file
// if the errors occurs - ignore file and  use default configuration
func parseYAML(data string) Config {

	var s Config

	if err := yaml.Unmarshal([]byte(data), &s); err != nil {
		log.Panicf("Error at unmarshal file %v", err)

	}

	return s
}

// initialization  configuration
func Init(confData string) *Config {

	var conf Config
	if confData != "" {
		conf = parseYAML(confData)

	} else {
		panic("config is empty")
	}

	applyEnvOverrides(&conf)

	//log.Debugf("configuration %#v", conf)

	return &conf

}

// applyEnvOverrides lets secrets be supplied via the environment (e.g. from a
// Kubernetes Secret) instead of being committed to the YAML config file.
func applyEnvOverrides(conf *Config) {
	if v, ok := os.LookupEnv("DATABASE_CONNECTION_URL"); ok {
		conf.Database.ConnectionURL = v
	}
	if v, ok := os.LookupEnv("DATABASE_USER"); ok {
		conf.Database.User = v
	}
	if v, ok := os.LookupEnv("DATABASE_PASSWD"); ok {
		conf.Database.Passwd = v
	}
	if v, ok := os.LookupEnv("JWT_SIGNING_KEY"); ok {
		conf.JWT.SigningKey = v
	}
}
