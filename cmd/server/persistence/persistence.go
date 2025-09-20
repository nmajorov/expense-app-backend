package persistence

import (
	"gorm.io/gorm"
)

type DatabaseHandler interface {
	// SaveOrder(spot model.Order) ([]byte, error)
	// FindOrder([]byte) (model.Order, error)
	// FindOrderById(id int64, broker int64) (model.Order, error)
	// FindAllOpenOrders() ([]model.Order, error)
	GetGORM() *gorm.DB
}
