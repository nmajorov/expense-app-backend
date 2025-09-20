package postgresql

import (
	"fmt"
	"os"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/config"
	"github.com/nmajorov/expense-app-backend/logger"
)

type PostgreSqlLayer struct {
	db *gorm.DB
}

func (pgLayer *PostgreSqlLayer) GetGORM() *gorm.DB {
	return pgLayer.db
}

// NewPostgreSqlLayer create a new layer for postgresql database connection
func NewPostgreSqlLayer(conf config.Database) persistence.DatabaseHandler {

	connString := conf.ConnectionURL

	// only if user and password are set
	if len(conf.User) > 0 && len(conf.Passwd) > 0 {

		connString = fmt.Sprintf("postgres://%s:%s@%s", conf.User, conf.Passwd, conf.ConnectionURL)

	}

	db, err := gorm.Open(postgres.Open(connString), &gorm.Config{})

	if err != nil {
		logger.AppLogger.Errorf("Unable to connect to database: %v\n", err)
		os.Exit(1)
	}

	return &PostgreSqlLayer{db}
}

// func (pgLayer *PostgreSqlLayer) SaveOrder(spot model.Order) ([]byte, error) {
// 	panic("not yet implemented")
// }

// func (pgLayer *PostgreSqlLayer) FindOrder([]byte) (model.Order, error) {
// 	panic("not yet implemented")
// }

// func (pgLayer *PostgreSqlLayer) FindOrderById(id int64, broker int64) (model.Order, error) {
// 	panic("not yet implemented")
// }

// func (pgLayer *PostgreSqlLayer) FindAllOpenOrders() ([]model.Order, error) {
// 	panic("not yet implemented")
// }
