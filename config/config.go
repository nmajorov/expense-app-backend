package config

import (
	"github.com/nmajorov/expense-app-backend/logger"
	"gopkg.in/yaml.v2"
)

// Web define web server settings
type Web struct {
	PortWeb int64 `yaml:"port"`
	Verbose bool  `yaml:"verbose,omitempty"`
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

	//log.Debugf("configuration %#v", conf)

	return &conf

}
