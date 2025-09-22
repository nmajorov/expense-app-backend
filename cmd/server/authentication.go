package server

import (
	"encoding/json"
	"net/http"

	"github.com/nmajorov/expense-app-backend/model"
)

// Login - simple user authentication
//
//	 @Param login	body  Credentials true	"login"
//		@Summary		Login in the application
//		@Description	Login into app
//		@Tags			accounts
//		@Accept			json
//		@Produce		json
//		@Success	200
//		@Failure	400
//
// @Router		/auth/login [post]
func LoginHandler(w http.ResponseWriter, r *http.Request) {

	decoder := json.NewDecoder(r.Body)
	var login model.Credentials
	err := decoder.Decode(&login)

	if err != nil {
		logger.Error("Error at decoding request: ", err)
		w.WriteHeader(http.StatusBadRequest)
		return
	}

	if login.Username == "niko" && login.Password == "Geneva2022" {
		session, err := sessionStore.Get(r, "session")
		session.Values["user_id"] = login.Username
		// 24 hours session
		session.Options.MaxAge = 3600 * 24
		sessionStore.Save(r, w, session)

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

// AuthMiddleware - check user session tocken
func AuthMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		logger.Println("AuthMiddleware")
		session, err := sessionStore.Get(r, "session")

		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
			return
		}
		logger.Debug(session.Values["user_id"])

		if session.Values["user_id"] == nil {
			w.WriteHeader(http.StatusUnauthorized)
		} else {
			next.ServeHTTP(w, r)
		}

	})
}
