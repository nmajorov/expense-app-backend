package persistence

import (
	"fmt"
	"os"

	"gorm.io/driver/postgres"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"

	"github.com/nmajorov/expense-app-backend/config"
	"github.com/nmajorov/expense-app-backend/logger"
	"github.com/nmajorov/expense-app-backend/model"
)

type SqlLayer struct {
	db *gorm.DB
}

// AddAccount implements persistence.DatabaseHandler.
func (sqlLayer *SqlLayer) AddAccount(user *model.AccountInfo) error {
	result := sqlLayer.db.Create(user)
	return result.Error
}

// GetAccountInfo implements persistence.DatabaseHandler.
func (sqlLayer *SqlLayer) GetAccountInfo(Username string) (*model.AccountInfo, error) {
	panic("unimplemented")
}

func (pgLayer *SqlLayer) GetGORM() *gorm.DB {
	return pgLayer.db
}

// NewSqlLayer create a new layer for the configured database connection
func NewSqlLayer(conf config.Database) *SqlLayer {
	var db *gorm.DB
	var err error
	connString := conf.ConnectionURL

	switch conf.Type {
	case "postgres":
		// only if user and password are set
		if len(conf.User) > 0 && len(conf.Passwd) > 0 {
			connString = fmt.Sprintf("postgres://%s:%s@%s", conf.User, conf.Passwd, conf.ConnectionURL)
		}
		db, err = gorm.Open(postgres.Open(connString), &gorm.Config{})
		if err != nil {
			logger.AppLogger.Errorf("Unable to connect to postgres database: %v\n", err)
			os.Exit(1)
		}

	case "sqlite":
		db, err = gorm.Open(sqlite.Open(connString), &gorm.Config{})
		if err != nil {
			logger.AppLogger.Errorf("Unable to connect to sqlite database: %v\n", err)
			os.Exit(1)
		}

	default:
		logger.AppLogger.Fatalf("Unsupported database type provided: %s", conf.Type)
	}

	logger.AppLogger.Info("Running AutoMigrate for sqlite")
	err = db.AutoMigrate(&model.AccountInfo{})
	if err != nil {
		logger.AppLogger.Warnf("AutoMigrate failed: %v", err)
	}

	return &SqlLayer{db}
}
