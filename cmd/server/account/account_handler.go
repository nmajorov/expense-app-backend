package account

import (
	"fmt"
	"net/http"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	log "github.com/nmajorov/expense-app-backend/logger"
)

var logger = log.AppLogger

type AccountHandler struct {
	DataBaseHandler *persistence.DatabaseHandler
}

func NewAccountHandler(db *persistence.DatabaseHandler) *AccountHandler {
	return &AccountHandler{
		DataBaseHandler: db,
	}
}

// GetAccountInfo receive account information
func (ah *AccountHandler) GetAccountInfo(w http.ResponseWriter, r *http.Request) {
	logger.Debug("enter  GetAccountInfo method")
	var err error

	accountId := r.URL.Query().Get("accountId")

	if accountId == "" {
		w.WriteHeader(500)
		_, _ = fmt.Fprint(w, `{"error": "accountId parameter is	not set"}`)
		return
	}

	//TODO: save current account status to the database

	if nil != err {
		w.WriteHeader(500)
		_, _ = fmt.Fprintf(w, `{"error": "error occurred while getting account info %s"}`, err)
		return
	}
	w.Header().Set("Content-Type", "application/json;charset=utf8")
	// //	err = json.NewEncoder(w).Encode(&accountInfo)
	// 	if err != nil {
	// 		w.WriteHeader(500)
	// 		_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode events to JSON %s"}`, err)
	// 	}

}
