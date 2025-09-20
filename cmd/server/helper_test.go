package server

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"net/http/httptest"
	"net/url"
	"strings"
	"testing"

	"github.com/nmajorov/expense-app-backend/config"
)

const (
	TEST_PROXY_PORT  = 3010
	TEST_SERVER_PORT = 7001
)

// it server will proxy requests and
// so we can give predefined
func createTestProxyServer(t testing.TB, jsonRawTestResponse json.RawMessage) *httptest.Server {
	log.Printf("create a proxy server on port:%d", TEST_PROXY_PORT)
	t.Helper()
	// create a listener with the desired port.
	l, err := net.Listen("tcp", fmt.Sprintf("127.0.0.1:%d", TEST_PROXY_PORT))
	if err != nil {
		log.Fatal(err)
	}

	ts := httptest.NewUnstartedServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Printf("mocking binance response")
		w.WriteHeader(http.StatusOK)

		w.Header().Set("Content-Type", "application/json;charset=UTF-8")
		err := json.NewEncoder(w).Encode(jsonRawTestResponse)
		if err != nil {
			log.Fatalf("error encode json in mocked response")
		}

	}))

	//  Close existing test server  listener and replace it
	err = ts.Listener.Close()
	if err != nil {
		panic(err)
	}
	ts.Listener = l

	go ts.Start()

	return ts

}

// it server will proxy requests and
// so we can give predefined
func createTPS(t testing.TB, testResponse []byte) *httptest.Server {
	log.Printf("create a proxy server on port:%d", TEST_PROXY_PORT)
	t.Helper()
	// create a listener with the desired port.
	l, err := net.Listen("tcp", fmt.Sprintf("127.0.0.1:%d", TEST_PROXY_PORT))
	if err != nil {
		log.Fatal(err)
	}

	ts := httptest.NewUnstartedServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Printf("mocking binance response")
		w.WriteHeader(http.StatusOK)

		//w.Header().Set("Content-Type", "application/json;charset=UTF-8")
		int, err := w.Write(testResponse)
		if err != nil {
			log.Fatalf("error in response response %v", err)
		}
		w.WriteHeader(int)

	}))

	//  Close existing test server  listener and replace it
	err = ts.Listener.Close()
	if err != nil {
		panic(err)
	}
	ts.Listener = l

	go ts.Start()

	return ts

}

// run trade server with given configuration
func runServerEnv(t testing.TB) *http.Server {
	t.Helper()
	var cnf *config.Config = new(config.Config)
	cnf.PortWeb = TEST_SERVER_PORT

	cnf.Database.ConnectionURL = "file::memory:?cache=shared"
	cnf.Database.Type = "sqlite3"

	log.Printf("trade-go server config: %v", cnf)
	testServeHTTP := NewServer(cnf).HTTPServer

	go func() {
		log.Printf("run test server")
		if err := testServeHTTP.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatalf("listen: %s\n", err)
		}
	}()

	return testServeHTTP

}

func PrepareJSONTestEnv(t testing.TB, jsonTestResponse json.RawMessage) (*httptest.Server, *http.Server) {
	t.Helper()
	proxyServer := createTestProxyServer(t, jsonTestResponse)

	traderServer := runServerEnv(t)

	return proxyServer, traderServer
}

func PrepareSimpleTestEnv(t testing.TB, testResponse []byte) (*httptest.Server, *http.Server) {
	t.Helper()
	proxyServer := createTPS(t, testResponse)

	traderServer := runServerEnv(t)

	return proxyServer, traderServer
}

func NewRequestWithJSON(t testing.TB, method, urlStr string, v interface{}) *http.Request {
	t.Helper()

	jsonBytes, err := json.Marshal(v)
	if err != nil {
		log.Fatalf("error  marshal to json type: %v ", v)
	}
	req := NewRequestWithBody(t, method, urlStr, bytes.NewBuffer(jsonBytes))
	req.Header.Add("Content-Type", "application/json")
	return req
}

func NewRequestRawJSON(t testing.TB, method, urlStr string, jsonBytes []byte, params map[string]string) *http.Request {
	t.Helper()
	var req *http.Request

	if method == http.MethodGet {
		if params == nil {
			log.Fatalf("parameters missing for request")
		}
		req = NewRequestWithParameter(t, method, urlStr, params)
	} else {
		req = NewRequestWithBody(t, method, urlStr, bytes.NewBuffer(jsonBytes))
		req.Header.Add("Content-Type", "application/json")
	}
	return req
}

func NewRequestWithBody(t testing.TB, method, urlStr string, body io.Reader) *http.Request {
	t.Helper()
	if !strings.HasPrefix(urlStr, "http") && !strings.HasPrefix(urlStr, "/") {
		urlStr = "/" + urlStr
	}
	request, err := http.NewRequest(method, urlStr, body)
	if err != nil {
		log.Fatal("error in sending NewRequestWithBody")
	}

	return request
}

func NewRequestWithParameter(t testing.TB, method, urlStr string, params map[string]string) *http.Request {
	t.Helper()
	if !strings.HasPrefix(urlStr, "http") && !strings.HasPrefix(urlStr, "/") {
		urlStr = "/" + urlStr
	}
	request, err := http.NewRequest(method, urlStr, nil)
	query := url.Values{}
	for k, v := range params {
		log.Printf("set parameter %s:%s", k, v)
		query.Add(k, v)
	}

	request.URL.RawQuery = query.Encode()
	log.Printf("call url: %s \n", request.URL.String())
	if err != nil {
		log.Fatal("error in sending NewRequestWithBody")
	}

	return request
}
