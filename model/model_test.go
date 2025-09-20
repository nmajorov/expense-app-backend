package model

import (
	"encoding/json"
	"reflect"
	"testing"
)

func TestAccountInfoParsing(t *testing.T) {
	// Define the JSON string to parse.  This is your sample JSON.
	jsonString := `{
		"login": 7025484,
		"trade_mode": 0,
		"leverage": 500,
		"limit_orders": 0,
		"margin_so_mode": 0,
		"trade_allowed": true,
		"trade_expert": true,
		"margin_mode": 2,
		"currency_digits": 2,
		"fifo_close": false,
		"balance": 100917.0,
		"credit": 0.0,
		"profit": 48.52,
		"equity": 100965.52,
		"margin": 20.11,
		"margin_free": 100945.41,
		"margin_level": 502066.2357036301,
		"margin_so_call": 100.0,
		"margin_so_so": 50.0,
		"margin_initial": 0.0,
		"margin_maintenance": 0.0,
		"assets": 0.0,
		"liabilities": 0.0,
		"commission_blocked": 0.0,
		"name": "Nikolaj Majorov 3rd A/C ",
		"server": "FPMarkets-Demo",
		"currency": "EUR",
		"company": "First Prudential Markets Pty Ltd."
	}`

	// Define the expected AccountInfo struct after parsing.  This is the ground truth.
	expectedAccount := AccountInfo{
		Login:             7025484,
		TradeMode:         0,
		Leverage:          500,
		LimitOrders:       0,
		MarginSoMode:      0,
		TradeAllowed:      true,
		TradeExpert:       true,
		MarginMode:        2,
		CurrencyDigits:    2,
		FifoClose:         false,
		Balance:           100917.0,
		Credit:            0.0,
		Profit:            48.52,
		Equity:            100965.52,
		Margin:            20.11,
		MarginFree:        100945.41,
		MarginLevel:       502066.2357036301,
		MarginSoCall:      100.0,
		MarginSoSo:        50.0,
		MarginInitial:     0.0,
		MarginMaintenance: 0.0,
		Assets:            0.0,
		Liabilities:       0.0,
		CommissionBlocked: 0.0,
		Name:              "Nikolaj Majorov 3rd A/C ",
		Server:            "FPMarkets-Demo",
		Currency:          "EUR",
		Company:           "First Prudential Markets Pty Ltd.",
	}

	// Create a variable to store the parsed AccountInfo.
	var actualAccount AccountInfo

	// Parse the JSON string into the AccountInfo struct.
	err := json.Unmarshal([]byte(jsonString), &actualAccount)
	if err != nil {
		t.Fatalf("Error unmarshaling JSON: %v", err) // Fail the test if there's an error.
	}

	// Compare the parsed AccountInfo with the expected AccountInfo.
	// Use DeepEqual for comparing structs.
	if !reflect.DeepEqual(actualAccount, expectedAccount) {
		t.Errorf("AccountInfo parsing failed.\nExpected: %+v\nActual:   %+v", expectedAccount, actualAccount)
	}
}
