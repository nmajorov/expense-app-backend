package persistence_test

import (
	"strings"
	"testing"
	"time"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/cmd/server/utils"
	"github.com/nmajorov/expense-app-backend/config"
	"github.com/nmajorov/expense-app-backend/logger"
	"github.com/nmajorov/expense-app-backend/model"
)

func TestSqlLayer_GetAccountInfo(t *testing.T) {
	tests := []struct {
		name string // description of this test case
		// Named input parameters for receiver constructor.
		conf    config.Database
		want    *model.AccountInfo
		wantErr bool
	}{
		{
			"test hashing password saving",
			config.Database{
				Type:          "sqlite3",
				ConnectionURL: "file::memory:?cache=shared",
			},

			&model.AccountInfo{
				ID:           uint(0),
				Name:         "joe",
				LastName:     "smith",
				Username:     "joe",
				Email:        "joe@test.com",
				PasswordHash: "",
			},

			false,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			var err error
			sqllayer := persistence.NewSqlLayer(tt.conf)
			tt.want.PasswordHash, err = utils.HashPassword("secret")
			if err != nil {
				t.Errorf("HashPassword() failed: %v", err)
			}
			err = sqllayer.AddAccount(tt.want)
			if err != nil {
				t.Errorf("AddAccount() failed: %v", err)
			}

			got, gotErr := sqllayer.GetAccountInfo(tt.want.Username)
			if gotErr != nil {
				if !tt.wantErr {
					t.Errorf("GetAccountInfo() failed: %v", gotErr)
				}
				return
			}
			if strings.Compare(tt.want.Username, got.Username) != 0 ||
				strings.Compare(tt.want.Name, got.Name) != 0 ||
				strings.Compare(tt.want.LastName, got.LastName) != 0 ||
				strings.Compare(tt.want.Email, got.Email) != 0 { // Check password hash
				t.Errorf("GetAccountInfo() got = %+v, want %+v", got, tt.want)
			}
			if !utils.CheckPasswordHash("secret", got.PasswordHash) {
				t.Errorf("GetAccountInfo() password hash not matched: got = %v, want %v", got.PasswordHash, tt.want.PasswordHash)
			}
		})
	}
}

func TestSqlLayer_Report(t *testing.T) {
	conf := config.Database{
		Type:          "sqlite3",
		ConnectionURL: "file::memory:?cache=shared",
	}
	sqllayer := persistence.NewSqlLayer(conf)

	t.Run("AddReport", func(t *testing.T) {
		id, err := sqllayer.AddReport("Test Report")
		logger.AppLogger.Infof("Added report with ID: %d", id)

		if err != nil {
			t.Errorf("AddReport() failed: %v", err)
		}

	})

	t.Run("GetReport", func(t *testing.T) {
		report, err := sqllayer.GetReport(1)
		if err != nil {
			t.Errorf("GetReport() failed: %v", err)
		}
		if report.ID != 1 {
			t.Errorf("GetReport() got = %v, want %v", report.ID, 1)
		}
	})

	t.Run("GetReports", func(t *testing.T) {
		reports, err := sqllayer.GetReports()
		if err != nil {
			t.Errorf("GetReports() failed: %v", err)
		}
		if len(reports) != 1 {
			t.Errorf("GetReports() got = %v, want %v", len(reports), 1)
		}
	})

	t.Run("UpdateReport", func(t *testing.T) {
		report, err := sqllayer.GetReport(1)
		if err != nil {
			t.Errorf("GetReport() failed: %v", err)
		}

		report.Name = "Updated Report"
		err = sqllayer.UpdateReport(report)
		if err != nil {
			t.Errorf("UpdateReport() failed: %v", err)
		}

		updatedReport, err := sqllayer.GetReport(1)
		if err != nil {
			t.Errorf("GetReport() failed: %v", err)
		}

		if updatedReport.Name != "Updated Report" {
			t.Errorf("UpdateReport() got = %v, want %v", updatedReport.Name, "Updated Report")
		}
	})

	t.Run("DeleteReport", func(t *testing.T) {
		err := sqllayer.DeleteReport(1)
		if err != nil {
			t.Errorf("DeleteReport() failed: %v", err)
		}

		_, err = sqllayer.GetReport(1)
		if err == nil {
			t.Errorf("GetReport() should have failed after DeleteReport(), but it didn't")
		}
	})

	t.Run("GetExpensesForReport", func(t *testing.T) {

		reportId, err := sqllayer.AddReport("Test Report02")

		if err != nil {
			t.Errorf("AddReport() failed: %v", err)
		}

		report3Id, err := sqllayer.AddReport("Test Report03")

		if err != nil {
			t.Errorf("AddReport() failed: %v", err)
		}

		exp1 := model.Expense{
			ReportID:    uint(reportId),
			CreatedAt:   time.Now(),
			Amount:      100,
			Description: "TestExpense01",
		}

		exp2 := model.Expense{
			ReportID:    uint(reportId),
			CreatedAt:   time.Now(),
			Amount:      102,
			Description: "TestExpese02",
		}

		exp3 := model.Expense{
			ReportID:    uint(report3Id),
			CreatedAt:   time.Now(),
			Amount:      300,
			Description: "TestExpese03",
		}

		err = sqllayer.AddExpense(&exp1)
		if err != nil {
			t.Errorf("AddReport() failed: %v", err)
		}

		err = sqllayer.AddExpense(&exp2)
		if err != nil {
			t.Errorf("AddReport() failed: %v", err)
		}

		err = sqllayer.AddExpense(&exp3)
		if err != nil {
			t.Errorf("AddReport() failed: %v", err)
		}

		expenses, err := sqllayer.GetExpensesForReport(reportId)

		if err != nil {
			t.Errorf("GetExpensesForReport() failed: %v", err)
		}

		logger.AppLogger.Infof("got expense [0]: %s %v for report %d", expenses[0].Description, expenses[0].ReportID, reportId)
		if len(expenses) != 2 {
			t.Errorf("GetExpensesForReport() got = %v, want %v", len(expenses), 2)
		}
		if expenses[0].Description != "TestExpense01" {
			t.Errorf("GetExpensesForReport() got = %v, want %v", expenses[0].Description, "TestExpense01")
		}

		expenses3, err := sqllayer.GetExpensesForReport(report3Id)

		if err != nil {
			t.Errorf("GetExpensesForReport() failed: %v", err)
		}

		logger.AppLogger.Infof("got expense [0]: %s %v for report %d", expenses3[0].Description, expenses3[0].ReportID, report3Id)
		if len(expenses3) != 1 {
			t.Errorf("GetExpensesForReport() got = %v, want %v", len(expenses3), 1)
		}

		if expenses3[0].Description != "TestExpese03" {
			t.Errorf("GetExpensesForReport(%d) got = %v, want %v", report3Id, expenses3[0].Description, "TestExpese03")
		}

	})
}
