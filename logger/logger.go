package logger

import (
	logrus "github.com/sirupsen/logrus"
)

var AppLogger = newLogger()

// NewLogger builds a new logger based on options
func newLogger() *logrus.Logger {
	l := logrus.New()
	l.SetFormatter(&logrus.TextFormatter{TimestampFormat: "2006-01-02 15:04:05", FullTimestamp: true})
	l.SetLevel(logrus.TraceLevel)
	return l
}
