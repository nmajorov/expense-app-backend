package server

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"testing"
	"time"

	"github.com/nmajorov/expense-app-backend/config"
)

const routesTestServerPort = 7002

// startRoutesTestServer boots a real HTTP server backed by an in-memory
// sqlite database and returns its base URL. The server is closed when the
// test finishes.
func startRoutesTestServer(t *testing.T) string {
	t.Helper()

	cnf := &config.Config{}
	cnf.PortWeb = routesTestServerPort
	cnf.Database.Type = "sqlite3"
	cnf.Database.ConnectionURL = "file::memory:?cache=shared"
	cnf.JWT.SigningKey = "test-signing-key"
	cnf.JWT.MaxAgeHours = 4

	srv := NewServer(cnf).HTTPServer
	go func() {
		_ = srv.ListenAndServe()
	}()
	t.Cleanup(func() { _ = srv.Close() })

	baseURL := fmt.Sprintf("http://127.0.0.1:%d", routesTestServerPort)
	waitForServer(t, baseURL+"/alive")
	return baseURL
}

func waitForServer(t *testing.T, url string) {
	t.Helper()
	deadline := time.Now().Add(3 * time.Second)
	for time.Now().Before(deadline) {
		resp, err := http.Get(url)
		if err == nil {
			resp.Body.Close()
			return
		}
		time.Sleep(20 * time.Millisecond)
	}
	t.Fatalf("server did not start listening in time")
}

// doRequest issues an HTTP request and returns the status code and body.
func doRequest(t *testing.T, method, url, token string, payload []byte) (int, []byte) {
	t.Helper()

	var reader io.Reader
	if payload != nil {
		reader = bytes.NewReader(payload)
	}

	req, err := http.NewRequest(method, url, reader)
	if err != nil {
		t.Fatalf("new request: %v", err)
	}
	if payload != nil {
		req.Header.Set("Content-Type", "application/json")
	}
	if token != "" {
		req.Header.Set("Authorization", "Bearer "+token)
	}

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		t.Fatalf("do request: %v", err)
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("read body: %v", err)
	}
	return resp.StatusCode, body
}

func TestServerRoutes(t *testing.T) {
	baseURL := startRoutesTestServer(t)

	t.Run("PublicRoutes", func(t *testing.T) {
		status, body := doRequest(t, http.MethodGet, baseURL+"/status", "", nil)
		if status != http.StatusOK {
			t.Errorf("GET /status: got status %d, want %d (body=%s)", status, http.StatusOK, body)
		}

		status, body = doRequest(t, http.MethodGet, baseURL+"/alive", "", nil)
		if status != http.StatusOK {
			t.Errorf("GET /alive: got status %d, want %d", status, http.StatusOK)
		}
		if string(body) != "alive\n" {
			t.Errorf("GET /alive: got body %q, want %q", body, "alive\n")
		}
	})

	username := fmt.Sprintf("routetest_%d", time.Now().UnixNano())
	var token string

	t.Run("Auth", func(t *testing.T) {
		regPayload, _ := json.Marshal(map[string]string{
			"name":      "Route",
			"last_name": "Test",
			"username":  username,
			"email":     username + "@test.com",
			"password":  "secret123",
		})
		status, body := doRequest(t, http.MethodPost, baseURL+"/auth/register", "", regPayload)
		if status != http.StatusCreated {
			t.Fatalf("POST /auth/register: got status %d, want %d (body=%s)", status, http.StatusCreated, body)
		}

		// The same "password" field name must work for login too - register
		// and login previously disagreed on the JSON key ("password" vs
		// "passwd"), which silently produced an unusable account.
		loginPayload, _ := json.Marshal(map[string]string{
			"username": username,
			"password": "secret123",
		})
		status, body = doRequest(t, http.MethodPost, baseURL+"/auth/login", "", loginPayload)
		if status != http.StatusOK {
			t.Fatalf("POST /auth/login: got status %d, want %d (body=%s)", status, http.StatusOK, body)
		}

		var loginResp struct {
			Token string `json:"token"`
		}
		if err := json.Unmarshal(body, &loginResp); err != nil {
			t.Fatalf("unmarshal login response: %v (body=%s)", err, body)
		}
		if loginResp.Token == "" {
			t.Fatalf("login response did not contain a token (body=%s)", body)
		}
		token = loginResp.Token

		status, _ = doRequest(t, http.MethodGet, baseURL+"/account/info?username="+username, "", nil)
		if status != http.StatusUnauthorized {
			t.Errorf("GET /account/info without token: got status %d, want %d", status, http.StatusUnauthorized)
		}
	})

	if token == "" {
		t.Fatal("no auth token obtained, cannot continue with protected route tests")
	}

	t.Run("AccountInfo", func(t *testing.T) {
		status, body := doRequest(t, http.MethodGet, baseURL+"/account/info?username="+username, token, nil)
		if status != http.StatusOK {
			t.Fatalf("GET /account/info: got status %d, want %d (body=%s)", status, http.StatusOK, body)
		}

		var info struct {
			Username string `json:"username"`
		}
		if err := json.Unmarshal(body, &info); err != nil {
			t.Fatalf("unmarshal account info: %v", err)
		}
		if info.Username != username {
			t.Errorf("GET /account/info: got username %q, want %q", info.Username, username)
		}
	})

	var reportID int64

	t.Run("Reports", func(t *testing.T) {
		t.Run("Create", func(t *testing.T) {
			status, body := doRequest(t, http.MethodPost, baseURL+"/reports", token, []byte(`{"name":"Route Test Report"}`))
			if status != http.StatusCreated {
				t.Fatalf("POST /reports: got status %d, want %d (body=%s)", status, http.StatusCreated, body)
			}

			var created struct {
				ID   int64  `json:"id"`
				Name string `json:"name"`
			}
			if err := json.Unmarshal(body, &created); err != nil {
				t.Fatalf("unmarshal created report: %v (body=%s)", err, body)
			}
			if created.Name != "Route Test Report" {
				t.Errorf("POST /reports: got name %q, want %q", created.Name, "Route Test Report")
			}
			if created.ID == 0 {
				t.Fatalf("POST /reports: got id 0, want a nonzero id")
			}
			reportID = created.ID
		})

		t.Run("GetByID", func(t *testing.T) {
			url := fmt.Sprintf("%s/reports/%d", baseURL, reportID)
			status, body := doRequest(t, http.MethodGet, url, token, nil)
			if status != http.StatusOK {
				t.Fatalf("GET %s: got status %d, want %d (body=%s)", url, status, http.StatusOK, body)
			}

			// Regression check: this route used to be shadowed by the
			// list-all-reports route and returned an array instead of a
			// single report.
			if bytes.HasPrefix(bytes.TrimSpace(body), []byte("[")) {
				t.Fatalf("GET %s returned an array instead of a single report: %s", url, body)
			}

			var got struct {
				ID   int64  `json:"id"`
				Name string `json:"name"`
			}
			if err := json.Unmarshal(body, &got); err != nil {
				t.Fatalf("unmarshal report: %v (body=%s)", err, body)
			}
			if got.ID != reportID {
				t.Errorf("GET %s: got id %d, want %d", url, got.ID, reportID)
			}
			if got.Name != "Route Test Report" {
				t.Errorf("GET %s: got name %q, want %q", url, got.Name, "Route Test Report")
			}
		})

		t.Run("List", func(t *testing.T) {
			status, body := doRequest(t, http.MethodGet, baseURL+"/reports", token, nil)
			if status != http.StatusOK {
				t.Fatalf("GET /reports: got status %d, want %d (body=%s)", status, http.StatusOK, body)
			}

			var list []struct {
				ID int64 `json:"id"`
			}
			if err := json.Unmarshal(body, &list); err != nil {
				t.Fatalf("unmarshal report list: %v (body=%s)", err, body)
			}
			found := false
			for _, rep := range list {
				if rep.ID == reportID {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("GET /reports: created report %d not found in list %v", reportID, list)
			}
		})

		t.Run("Update", func(t *testing.T) {
			payload := []byte(fmt.Sprintf(`{"id":%d,"name":"Updated Report"}`, reportID))
			status, body := doRequest(t, http.MethodPut, baseURL+"/reports", token, payload)
			if status != http.StatusOK {
				t.Fatalf("PUT /reports: got status %d, want %d (body=%s)", status, http.StatusOK, body)
			}

			var updated struct {
				Name string `json:"name"`
			}
			if err := json.Unmarshal(body, &updated); err != nil {
				t.Fatalf("unmarshal updated report: %v (body=%s)", err, body)
			}
			if updated.Name != "Updated Report" {
				t.Errorf("PUT /reports: got name %q, want %q", updated.Name, "Updated Report")
			}
		})
	})

	var expenseID int64

	t.Run("Expenses", func(t *testing.T) {
		t.Run("CreateWithoutReportIDRejected", func(t *testing.T) {
			// Regression check: this used to silently accept the request and
			// return 201 without creating anything.
			status, _ := doRequest(t, http.MethodPost, baseURL+"/expenses", token, []byte(`{"amount":10,"description":"orphan"}`))
			if status != http.StatusBadRequest {
				t.Errorf("POST /expenses without reportid: got status %d, want %d", status, http.StatusBadRequest)
			}
		})

		t.Run("Create", func(t *testing.T) {
			url := fmt.Sprintf("%s/expenses?reportid=%d", baseURL, reportID)
			status, body := doRequest(t, http.MethodPost, url, token, []byte(`{"amount":42.5,"description":"Route test expense"}`))
			if status != http.StatusCreated {
				t.Fatalf("POST %s: got status %d, want %d (body=%s)", url, status, http.StatusCreated, body)
			}

			var created struct {
				ID          int64   `json:"id"`
				Description string  `json:"description"`
				Amount      float64 `json:"amount"`
			}
			if err := json.Unmarshal(body, &created); err != nil {
				t.Fatalf("unmarshal created expense: %v (body=%s)", err, body)
			}
			if created.Description != "Route test expense" {
				t.Errorf("POST %s: got description %q, want %q", url, created.Description, "Route test expense")
			}
			if created.ID == 0 {
				t.Fatalf("POST %s: got id 0, want a nonzero id", url)
			}
			expenseID = created.ID
		})

		t.Run("GetByID", func(t *testing.T) {
			url := fmt.Sprintf("%s/expenses/%d", baseURL, expenseID)
			status, body := doRequest(t, http.MethodGet, url, token, nil)
			if status != http.StatusOK {
				t.Fatalf("GET %s: got status %d, want %d (body=%s)", url, status, http.StatusOK, body)
			}

			// Regression check: this route used to be shadowed by the
			// list-all-expenses route and returned an array instead of a
			// single expense.
			if bytes.HasPrefix(bytes.TrimSpace(body), []byte("[")) {
				t.Fatalf("GET %s returned an array instead of a single expense: %s", url, body)
			}

			var got struct {
				ID int64 `json:"id"`
			}
			if err := json.Unmarshal(body, &got); err != nil {
				t.Fatalf("unmarshal expense: %v (body=%s)", err, body)
			}
			if got.ID != expenseID {
				t.Errorf("GET %s: got id %d, want %d", url, got.ID, expenseID)
			}
		})

		t.Run("Delete", func(t *testing.T) {
			url := fmt.Sprintf("%s/expenses/%d", baseURL, expenseID)
			status, body := doRequest(t, http.MethodDelete, url, token, nil)
			if status != http.StatusNoContent {
				t.Fatalf("DELETE %s: got status %d, want %d (body=%s)", url, status, http.StatusNoContent, body)
			}
		})
	})

	t.Run("DeleteReport", func(t *testing.T) {
		url := fmt.Sprintf("%s/reports/%d", baseURL, reportID)
		status, body := doRequest(t, http.MethodDelete, url, token, nil)
		if status != http.StatusNoContent {
			t.Fatalf("DELETE %s: got status %d, want %d (body=%s)", url, status, http.StatusNoContent, body)
		}
	})
}
