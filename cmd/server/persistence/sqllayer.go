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

	account := new(model.AccountInfo)
	result := sqlLayer.db.First(&account, "username = ?", Username)

	if result.Error != nil {
		return nil, result.Error
	}

	return account, nil

}

func (sqlLayer *SqlLayer) AddReport(name string) error {
	report := &model.Report{Name: name}
	result := sqlLayer.db.Create(report)
	return result.Error
}

func (sqlLayer *SqlLayer) GetReports() ([]model.Report, error) {
	var reports []model.Report
	result := sqlLayer.db.Preload("Expenses").Find(&reports)
	return reports, result.Error
}

func (sqlLayer *SqlLayer) GetReport(id int64) (*model.Report, error) {
	report := new(model.Report)
	result := sqlLayer.db.Preload("Expenses").First(&report, id)
	if result.Error != nil {
		return nil, result.Error
	}
	return report, nil
}

func (sqlLayer *SqlLayer) UpdateReport(report *model.Report) error {
	result := sqlLayer.db.Save(report)
	return result.Error
}

func (sqlLayer *SqlLayer) DeleteReport(id int64) error {
	result := sqlLayer.db.Delete(&model.Report{}, id)
	return result.Error
}

func (sqlLayer *SqlLayer) AddExpense(expense *model.Expense) error {
	result := sqlLayer.db.Create(expense)
	return result.Error
}

func (sqlLayer *SqlLayer) GetExpenses() ([]model.Expense, error) {
	var expenses []model.Expense
	result := sqlLayer.db.Find(&expenses)
	return expenses, result.Error
}

func (sqlLayer *SqlLayer) GetExpense(id int64) (*model.Expense, error) {
	expense := new(model.Expense)
	result := sqlLayer.db.First(&expense, id)
	if result.Error != nil {
		return nil, result.Error
	}
	return expense, nil
}

func (sqlLayer *SqlLayer) UpdateExpense(expense *model.Expense) error {
	result := sqlLayer.db.Save(expense)
	return result.Error
}

func (sqlLayer *SqlLayer) DeleteExpense(id int64) error {
	result := sqlLayer.db.Delete(&model.Expense{}, id)
	return result.Error
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

	case "sqlite3":
		db, err = gorm.Open(sqlite.Open(connString), &gorm.Config{})
		if err != nil {
			logger.AppLogger.Errorf("Unable to connect to sqlite database: %v\n", err)
			os.Exit(1)
		}

	default:
		logger.AppLogger.Fatalf("Unsupported database type provided: %s", conf.Type)
	}

	logger.AppLogger.Info("Running AutoMigrate for sqlite")
	err = db.AutoMigrate(&model.AccountInfo{}, &model.Report{}, &model.Expense{})
	if err != nil {
		logger.AppLogger.Warnf("AutoMigrate failed: %v", err)
	}

	return &SqlLayer{db}
}
