package account

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/cmd/server/utils"
	log "github.com/nmajorov/expense-app-backend/logger"
	"github.com/nmajorov/expense-app-backend/model"
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

// RegisterUser handles new user registration.
func (ah *AccountHandler) RegisterUser(w http.ResponseWriter, r *http.Request) {
	// Define a temporary struct to decode the registration request.
	var registrationData struct {
		Username string `json:"username"`
		Email    string `json:"email"`
		Password string `json:"password"`
		Name     string `json:"name"`
		LastName string `json:"last_name"`
	}

	// Decode the request body.
	decoder := json.NewDecoder(r.Body)
	err := decoder.Decode(&registrationData)
	if err != nil {
		logger.Error("Error at decoding registration request: ", err)
		w.WriteHeader(http.StatusBadRequest)
		fmt.Fprintf(w, `{"error": "Invalid request payload"}`)
		return
	}

	// Hash the user's password.
	passwordHash, err := utils.HashPassword(registrationData.Password)
	if err != nil {
		logger.Error("Error at hashing password: ", err)
		w.WriteHeader(http.StatusInternalServerError)
		fmt.Fprintf(w, `{"error": "Internal server error"}`)
		return
	}

	// Create a new user model.
	account := &model.AccountInfo{
		Username:     registrationData.Username,
		Email:        registrationData.Email,
		Name:         registrationData.Name,
		LastName:     registrationData.LastName,
		PasswordHash: passwordHash,
	}

	dbHandler := ah.DataBaseHandler

	// Add the user to the database.
	err = dbHandler.AddAccount(account)

	if err != nil {
		logger.Error("Error at creating user: ", err)
		w.WriteHeader(http.StatusInternalServerError)
		fmt.Fprintf(w, `{"error": "Failed to register user"}`)
		return
	}

	// Respond with success.
	w.Header().Set("Content-Type", "application/json;charset=utf8")
	w.WriteHeader(http.StatusCreated)
	fmt.Fprintf(w, `{"message": "User registered successfully"}`)
}
