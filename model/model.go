package model

type OrderSideType string

const (
	SELL OrderSideType = "SELL"
	BUY  OrderSideType = "BUY"
)

/*
*

	{
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
	}

*
*/

type AccountInfo struct {
	Login             int     `json:"login"`
	TradeMode         int     `json:"trade_mode"`
	Leverage          int     `json:"leverage"`
	LimitOrders       int     `json:"limit_orders"`
	MarginSoMode      int     `json:"margin_so_mode"`
	TradeAllowed      bool    `json:"trade_allowed"`
	TradeExpert       bool    `json:"trade_expert"`
	MarginMode        int     `json:"margin_mode"`
	CurrencyDigits    int     `json:"currency_digits"`
	FifoClose         bool    `json:"fifo_close"`
	Balance           float64 `json:"balance"`
	Credit            float64 `json:"credit"`
	Profit            float64 `json:"profit"`
	Equity            float64 `json:"equity"`
	Margin            float64 `json:"margin"`
	MarginFree        float64 `json:"margin_free"`
	MarginLevel       float64 `json:"margin_level"`
	MarginSoCall      float64 `json:"margin_so_call"`
	MarginSoSo        float64 `json:"margin_so_so"`
	MarginInitial     float64 `json:"margin_initial"`
	MarginMaintenance float64 `json:"margin_maintenance"`
	Assets            float64 `json:"assets"`
	Liabilities       float64 `json:"liabilities"`
	CommissionBlocked float64 `json:"commission_blocked"`
	Name              string  `json:"name"`
	Server            string  `json:"server"`
	Currency          string  `json:"currency"`
	Company           string  `json:"company"`
}
