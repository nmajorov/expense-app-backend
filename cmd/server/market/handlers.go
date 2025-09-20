package market

import (
	log "github.com/nmajorov/expense-app-backend/logger"
)

var logger = log.AppLogger

// MarketHandler  responsible for market information
type MarketHandler struct {
	//BinanceClient *binance.BinanceClient
	//TODO: add support for other brokers
}

// NewMarketHandler  creates a new MarketHandler instance
//func NewMarketHandler(clientBinance *binance.BinanceClient) *MarketHandler {
//	return &MarketHandler{BinanceClient: clientBinance}
//}
