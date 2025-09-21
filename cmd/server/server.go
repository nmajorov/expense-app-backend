package server

import (
	"encoding/json"
	"fmt"
	"net/http"
	"strconv"
	"time"

	"github.com/nmajorov/expense-app-backend/cmd/server/account"
	"github.com/nmajorov/expense-app-backend/cmd/server/persistence/dblayer"

	"github.com/gorilla/mux"

	"github.com/nmajorov/expense-app-backend/config"
	_ "github.com/nmajorov/expense-app-backend/docs"
	log "github.com/nmajorov/expense-app-backend/logger"
	httpSwagger "github.com/swaggo/http-swagger" // http-swagger middleware
	gormstore "github.com/wader/gormstore/v2"
)

var (
	logger       = log.AppLogger
	sessionStore *gormstore.Store
)

var (
	sha1ver   string         // sha1 revision used to build the program
	buildTime string         // when the executable was built
	version   string = "dev" // version
)

type Server struct {
	HTTPServer *http.Server
}

// UserLogin model info
// @Description User login information
type UserLogin struct {
	Username string `json:"username"`
	Passwd   string `json:"passwd"`
}

// corsMiddleware is a simple middleware to handle CORS headers.
func corsMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		// Set necessary CORS headers. You can make this more specific
		// by checking the Origin header and only allowing specific origins.
		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE")
		w.Header().Set("Access-Control-Allow-Headers", "Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization")

		// Handle preflight requests.
		if r.Method == "OPTIONS" {
			w.WriteHeader(http.StatusOK)
			return
		}

		// Pass the request to the next handler.
		next.ServeHTTP(w, r)
	})
}

func loggingMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		trReqStart := time.Now()
		logger.Info(fmt.Sprintf("%s  %s -- %s %s", r.Method, r.URL.Path, r.RemoteAddr, r.UserAgent()))
		next.ServeHTTP(w, r)
		trEnd := time.Since(trReqStart)
		logger.Infof("request took: %s", trEnd)

	})

}

func NewServer(conf *config.Config) *Server {

	logger.Infof("server version: %s", version)

	logger.Infof("server build:  %s  %s", sha1ver, buildTime)

	dbHandler := dblayer.NewPersistenceLayer(conf.Database)

	logger.Infof("configured database type: %s", conf.Database.Type)

	//configure session store
	sessionStore = gormstore.New(dbHandler.GetGORM(), []byte("secret"))

	//create periodic session clean up
	quit := make(chan struct{})
	go sessionStore.PeriodicCleanup(5*time.Minute, quit)

	router := mux.NewRouter()

	router.Use(loggingMiddleware)
	router.Use(corsMiddleware)
	//router.Use(mux.CORSMethodMiddleware(router))

	//No authentication required  for status

	//readiness probe for a server
	// give status for all brokers
	router.HandleFunc("/status", func(w http.ResponseWriter, r *http.Request) {

		//var brokersStatuses []BrokerStatus = make([]BrokerStatus, 5)

		var status = new(ServerStatus)
		status.Version = version

		// if err != nil {
		// 	logger.Errorf("error at calling binanceClient.Ping %v", err)
		// 	brokersStatuses[0] = BrokerStatus{model.Binance, false}
		// } else {
		// 	brokersStatuses[0] = BrokerStatus{model.Binance, true}
		// }

		//TODO: check other brokers status

		// // an example API handler
		// status.Brokers = brokersStatuses[0:1]
		err := json.NewEncoder(w).Encode(status)
		if err != nil {
			logger.Error("error at json encodings")
			w.WriteHeader(http.StatusInternalServerError)
		}
	})

	// it will be used by proxy to check if server is alive
	router.HandleFunc("/alive", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "alive\n")
	})

	router.PathPrefix("/swagger").Handler(httpSwagger.WrapHandler)

	authRoute := router.PathPrefix("/auth")

	authRoute.Methods(http.MethodPost, http.MethodOptions).Path("/login").HandlerFunc(LoginHandler)
	//TODO implement logout

	//future route
	accountRouter := router.PathPrefix("/account").Subrouter()
	//	accountRouter.Use(AuthMiddleware)
	accountHandler := account.NewAccountHandler(&dbHandler)
	accountRouter.Methods("GET").Path("/info").HandlerFunc(accountHandler.GetAccountInfo)

	//set port for server
	serverPort := strconv.FormatInt(conf.PortWeb, 10)
	logger.Info("server port: " + serverPort)

	srv := &http.Server{
		Handler: router,
		Addr:    "0.0.0.0:" + serverPort,
		// Good practice: enforce timeouts for servers you create!
		WriteTimeout: 15 * time.Second,
		ReadTimeout:  15 * time.Second,
	}

	server := &Server{
		HTTPServer: srv,
	}

	return server
}

//	@title			Expense app  API
//	@version		1.0
//	@description	This is a sample server app  server.
//	@termsOfService	http://swagger.io/terms/

//	@contact.name	API Support
//	@contact.url	http://www.swagger.io/support
//	@contact.email	support@swagger.io

//	@license.name	Apache 2.0
//	@license.url	http://www.apache.org/licenses/LICENSE-2.0.html

//	@host		localhost:7000
//	@BasePath	/api/v1

//	@securityDefinitions.basic	BasicAuth

// @securityDefinitions.apikey	ApiKeyAuth
// @in							header
// @name						Authorization
// @description				Description for what is this security definition being used
func (s *Server) Run() {

	logger.Fatal(s.HTTPServer.ListenAndServe())
}
