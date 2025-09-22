package account

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	log "github.com/nmajorov/expense-app-backend/logger"
)

var logger = log.AppLogger

type AccountHandler struct {
	DataBaseHandler *persistence.SqlLayer
}

func NewAccountHandler(db *persistence.SqlLayer) *AccountHandler {
	return &AccountHandler{
		DataBaseHandler: db,
	}
}

// GetAccountInfo godoc
//
//	@Summary		Get account information
//	@Description	Get account information for a given user
//	@Tags			account
//	@Accept			json
//	@Produce		json
//	@Param			username	query		string				true	"Username"
//	@Success		200			{object}	model.AccountInfo	"OK"
//	@Failure		400			{object}	object{error=string}	"Bad Request"
//	@Failure		404			{object}	object{error=string}	"Not Found"
//	@Failure		500			{object}	object{error=string}	"Internal Server Error"
//	@Router			/account/info [get]
func (ah *AccountHandler) GetAccountInfo(w http.ResponseWriter, r *http.Request) {
	logger.Debug("enter  GetAccountInfo method")

	username := r.URL.Query().Get("username")

	if username == "" {
		w.Header().Set("Content-Type", "application/json;charset=utf8")
		w.WriteHeader(http.StatusBadRequest)
		_, _ = fmt.Fprint(w, `{"error": "username parameter is not set"}`)
		return
	}

	accountInfo, err := ah.DataBaseHandler.GetAccountInfo(username)

	if nil != err {
		// Assuming a not found error is common here.
		w.Header().Set("Content-Type", "application/json;charset=utf8")
		w.WriteHeader(http.StatusNotFound)
		_, _ = fmt.Fprintf(w, `{"error": "error occurred while getting account info %s"}`, err)
		return
	}

	w.Header().Set("Content-Type", "application/json;charset=utf8")
	w.WriteHeader(http.StatusOK)
	err = json.NewEncoder(w).Encode(&accountInfo)
	if err != nil {
		w.WriteHeader(http.StatusNotFound)
		logger.Errorf("Error occurred while trying to encode account info to JSON: %s", err)
		// The header is already written, so we can't send another status code.
		// We can log the error. The client might receive a partial response.
		_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode events to JSON %s"}`, err)
		return
	}
}
