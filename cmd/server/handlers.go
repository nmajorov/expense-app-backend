package server

import (
	"net/http"
)

func GetTotalBalance(h http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		//TODO implement
	})
}
