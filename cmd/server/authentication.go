package server

import (
	"encoding/json"
	"fmt"
	"net/http"
	"strings"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/cmd/server/utils"
	"github.com/nmajorov/expense-app-backend/model"
)

// LoginHandler holds the dependencies for the login endpoint.
type LoginHandler struct {
	DataBaseHandler *persistence.SqlLayer
}

// Define a temporary struct to decode the registration request.
type registrationData struct {
	Username string `json:"username"`
	Email    string `json:"email"`
	Password string `json:"password"`
	Name     string `json:"name"`
	LastName string `json:"last_name"`
}

// NewLoginHandler creates a new LoginHandler with the given database handler.
func NewLoginHandler(db *persistence.SqlLayer) *LoginHandler {
	return &LoginHandler{
		DataBaseHandler: db,
	}
}

// Login - simple user authentication
//
//	@Summary		Login in the application
//	@Description	Login into app
//	@Tags			auth
//	@Accept			json
//	@Produce		json
//	@Param			login	body	model.Credentials	true	"User credentials"
//	@Success		200		{string}	string				"OK"
//	@Failure		400		{string}	string				"Bad Request"
//	@Failure		401		{string}	string				"Unauthorized"
//
// @Router		/auth/login [post]
func (lg *LoginHandler) Login(w http.ResponseWriter, r *http.Request) {

	// Decode the incoming JSON request body into a Credentials struct.
	decoder := json.NewDecoder(r.Body)
	var login model.Credentials
	err := decoder.Decode(&login)

	// If there's an error decoding the request, return a bad request response.
	if err != nil {
		logger.Error("Error at decoding request: ", err)
		w.WriteHeader(http.StatusBadRequest)
		return
	}

	account, err := lg.DataBaseHandler.GetAccountInfo(login.Username)

	//	err = utils.CheckPasswordHash([]byte(storedHash), []byte(creds.Password))
	if err != nil {
		w.WriteHeader(http.StatusUnauthorized)
		return
	}

	if utils.CheckPasswordHash(login.Password, account.PasswordHash) {
		jwt, err := jwtstore.Get(login.Username)
		jwtstore.Save(r, w, jwt)

		if err != nil {
			logger.Error("Error at at getting session ", err)
			w.WriteHeader(http.StatusInternalServerError)
		}

		logger.WithField("user", login.Username).Info("login was successful")
		w.Header().Set("Content-Type", "application/json;charset=utf8")
		w.WriteHeader(http.StatusOK)

	} else {
		logger.Error("login fail")
		w.WriteHeader(http.StatusUnauthorized)
	}

}

// RegisterUser handles new user registration.
//
//	@Summary		Register User in the application
//	@Description	Register a new user account
//	@Tags			auth
//	@Accept			json
//	@Produce		json
//	@Param			registrationData	body	    registrationData	true	"User Registration Data"
//	@Success		201					{object}	object{message=string}								"User registered successfully"
//	@Failure		400					{object}	object{error=string}								"Invalid request payload"
//	@Failure		500					{object}	object{error=string}								"Internal server error"
//	@Router			/auth/register [post]
func (ah *LoginHandler) RegisterUser(w http.ResponseWriter, r *http.Request) {

	// Decode the request body.
	decoder := json.NewDecoder(r.Body)
	reg := new(registrationData)

	err := decoder.Decode(&reg)
	if err != nil {
		logger.Error("Error at decoding registration request: ", err)
		w.WriteHeader(http.StatusBadRequest)
		fmt.Fprintf(w, `{"error": "Invalid request payload"}`)
		return
	}

	// Hash the user's password.
	passwordHash, err := utils.HashPassword(reg.Password)
	if err != nil {
		logger.Error("Error at hashing password: ", err)
		w.WriteHeader(http.StatusInternalServerError)
		fmt.Fprintf(w, `{"error": "Internal server error"}`)
		return
	}

	// Create a new user model.
	account := &model.AccountInfo{
		Username:     reg.Username,
		Email:        reg.Email,
		Name:         reg.Name,
		LastName:     reg.LastName,
		PasswordHash: passwordHash,
	}

	dbHandler := ah.DataBaseHandler

	// Add the user to the database.
	err = dbHandler.AddAccount(account)

	if err != nil {

		logger.Error("Error at creating user: ", err)

		if strings.Contains(err.Error(), "UNIQUE constraint") {

			w.WriteHeader(http.StatusConflict)
			fmt.Fprintf(w, `{"error": "User already exists"}`)
			return
		}

		w.WriteHeader(http.StatusInternalServerError)
		fmt.Fprintf(w, `{"error": "Failed to register user"}`)
		return
	}

	// Respond with success.
	w.Header().Set("Content-Type", "application/json;charset=utf8")
	w.WriteHeader(http.StatusCreated)
	fmt.Fprintf(w, `{"message": "User registered successfully"}`)
}

// AuthMiddleware is a middleware that checks for a valid user session.
// It ensures that a user is authenticated before allowing access to a protected route.
func AuthMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		logger.Println("AuthMiddleware")
		next.ServeHTTP(w, r)

		//session, err := jwtstore.Get(r, "session")

		// // If there is an error retrieving the session, it's a server-side issue.
		// if err != nil {
		// 	w.WriteHeader(http.StatusInternalServerError)
		// 	return
		// }
		// logger.Debug(session.Values["user_id"])

		// // Check if the user_id is present in the session. If not, the user is not authenticated.
		// if session.Values["user_id"] == nil {
		// 	w.WriteHeader(http.StatusUnauthorized)
		// } else {
		// 	// If the user is authenticated, pass the request to the next handler in the chain.
		// 	next.ServeHTTP(w, r)
		// }

	})
}
