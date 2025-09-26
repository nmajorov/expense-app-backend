package model

import (
	"time"

	"gorm.io/gorm"
)

type AccountInfo struct {
	gorm.Model `swaggerignore:"true"`
	ID         uint   `gorm:"primaryKey" swaggerignore:"true"`
	Name       string `json:"name"`
	LastName   string `json:"last_name"`
	Username   string `json:"username"`
	//email is a username
	Email string `json:"email" gorm:"unique"`
	//Company string `json:"company"`
	// Phone        string `json:"phone"`pop
	// Address      string `json:"address"`
	// City         string `json:"city"`
	// State        string `json:"state"`
	// Zip          string `json:"zip"`
	// Country      string `json:"country"`
	// CreatedAt    string `json:"created_at"`
	// UpdatedAt    string `json:"updated_at"`
	PasswordHash string `json:"-"` // Do not expose password hash in JSON responses
}

type Credentials struct {
	Username string `json:"username"`
	Password string `json:"passwd"`
}

// Report is an entity that represents a expense report
type Report struct {
	gorm.Model `swaggerignore:"true"`
	ID         int64      `json:"id"`
	Name       string     `json:"name"`
	CreatedAt  time.Time  `json:"createdAT"`
	TStamp     *time.Time `json:"tstamp,omitempty"`
	Expenses   []Expense  `gorm:"foreignKey:ReportID"`
}

type Expense struct {
	gorm.Model  `swaggerignore:"true"`
	ID          int64      `json:"id"`
	Description string     `json:"description"`
	CreatedAt   time.Time  `json:"createdAT"`
	Amount      float64    `json:"amount"`
	TStamp      *time.Time `json:"tstamp,omitempty"`
	ReportID    uint
}
