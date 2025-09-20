package sqlite

import (
	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/config"
	"github.com/nmajorov/expense-app-backend/logger"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type SQLiteLayer struct {
	DB *gorm.DB
}

func (pgLayer *SQLiteLayer) GetGORM() *gorm.DB {
	return pgLayer.DB
}

// NewSqliteLayer  create a new layer for postgresql database connection
func NewSqliteLayer(conf config.Database) persistence.DatabaseHandler {

	db, err := gorm.Open(sqlite.Open(conf.ConnectionURL), &gorm.Config{})
	if err != nil {
		logger.AppLogger.Fatal(err)
	}

	return &SQLiteLayer{DB: db}
}

// func (pgLayer *SQLiteLayer) SaveOrder(spot model.Order) ([]byte, error) {
// 	panic("not yet implemented")
// }

// func (pgLayer *SQLiteLayer) FindOrder([]byte) (model.Order, error) {
// 	panic("not yet implemented")
// }

// func (pgLayer *SQLiteLayer) FindOrderById(id int64, broker int64) (model.Order, error) {
// 	panic("not yet implemented")
// }

// func (pgLayer *SQLiteLayer) FindAllOpenOrders() ([]model.Order, error) {
// 	panic("not yet implemented")
// }
