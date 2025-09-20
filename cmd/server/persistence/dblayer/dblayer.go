package dblayer

import (
	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/cmd/server/persistence/postgresql"
	"github.com/nmajorov/expense-app-backend/cmd/server/persistence/sqlite"
	"github.com/nmajorov/expense-app-backend/config"
	"github.com/pkg/errors"
)

const (
	POSTGRESQL string = "postgresql"
	SQLITE     string = "sqlite3"
)

func NewPersistenceLayer(conf config.Database) persistence.DatabaseHandler {

	switch conf.Type {

	case POSTGRESQL:
		return postgresql.NewPostgreSqlLayer(conf)

	case SQLITE:
		return sqlite.NewSqliteLayer(conf)

	default:
		panic(errors.Errorf("unknown database type: %s", conf.Type))
	}
}
