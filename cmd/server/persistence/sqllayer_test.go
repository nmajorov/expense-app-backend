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
