package persistence_test

import (
	"strings"
	"testing"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/cmd/server/utils"
	"github.com/nmajorov/expense-app-backend/config"
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
		report := &model.Report{
			Name: "Test Report",
		}
		err := sqllayer.AddReport(report)
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
}
