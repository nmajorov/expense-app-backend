package account

import (
	"fmt"
	"net/http"

	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	log "github.com/nmajorov/expense-app-backend/logger"
)

var logger = log.AppLogger

type AccountHandler struct {
	DataBaseHandler *persistence.DatabaseHandler
}

func NewAccountHandler(db *persistence.DatabaseHandler) *AccountHandler {
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

// // QueryOrders 	get  USD-M futures order by id or symbol and return list of orders
// // broker parameter is mandatory
// // is symbol parameter is not set it returns all open orders
// func (fh *FutureHandler) QueryOrders(w http.ResponseWriter, r *http.Request) {
// 	logger.Debug("enter futures GetAccountInfo ")
// 	tradeRequest := new(model.TradeGoRequest)
// 	broker := r.URL.Query().Get("broker")
// 	symbol := r.URL.Query().Get("symbol")
// 	orderId := r.URL.Query().Get("orderId")
// 	origClientOrderId := r.URL.Query().Get("origClientOrderId")

// 	if broker != "" {
// 		brokerType, err := strconv.Atoi(broker)
// 		if err != nil {
// 			logger.Errorf("error converting broker parameters: %v", err)
// 			w.WriteHeader(500)
// 			_, _ = fmt.Fprintf(w, `{"error": "problem occurred while request %s"}`, err)
// 		}
// 		tradeRequest.Broker = model.Broker(brokerType)
// 	} else {
// 		w.WriteHeader(500)
// 		_, _ = fmt.Fprint(w, `{"error": "broker parameter is	not set"}`)
// 		return
// 	}

// 	switch tradeRequest.Broker {
// 	case model.CryptoCom:
// 		logger.Debug("handle crypto")
// 		panic("not yet implemented")
// 	case model.Kraken:
// 		logger.Debug("handle kraken")
// 		panic("not yet implemented")

// 	case model.Binance:
// 		logger.Debug("handle binance")

// 		var order *model.Order
// 		var orders *[]model.Order

// 		var err error

// 		if symbol != "" {

// 			if strings.Contains(symbol, "_") {
// 				symbol = utils.ConvertToBinanceTypePair(symbol)
// 			}

// 			// check if order id provided
// 			// then query specific order
// 			if orderId != "" {
// 				order, err = fh.BinanceClient.QueryFutureUSDMOrder(symbol, orderId, origClientOrderId)
// 				if nil != err {
// 					w.WriteHeader(500)
// 					_, _ = fmt.Fprintf(w, `{"error": "error occurred while querying orders %s"}`, err)
// 					return
// 				}
// 				//return orders as slice even I have a one order
// 				tmpOrders := make([]model.Order, 0)
// 				tmpOrders = append(tmpOrders, *order)
// 				w.Header().Set("Content-Type", "application/json;charset=utf8")
// 				err = json.NewEncoder(w).Encode(&tmpOrders)
// 				if err != nil {
// 					w.WriteHeader(500)
// 					_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode orders to JSON %s"}`, err)
// 				}
// 			} else {
// 				orders, err = fh.BinanceClient.GetOpenFutureUSDMOrders(symbol)
// 				if nil != err {
// 					w.WriteHeader(500)
// 					_, _ = fmt.Fprintf(w, `{"error": "error occurred while quering orders %s"}`, err)
// 					return
// 				}
// 				//return order
// 				w.Header().Set("Content-Type", "application/json;charset=utf8")
// 				err = json.NewEncoder(w).Encode(orders)
// 				if err != nil {
// 					w.WriteHeader(500)
// 					_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode orders to JSON %s"}`, err)
// 				}

// 			}

// 		} else {
// 			//return all  open orders
// 			orders, err = fh.BinanceClient.GetOpenFutureUSDMOrders("")
// 			if nil != err {
// 				w.WriteHeader(500)
// 				_, _ = fmt.Fprintf(w, `{"error": "error occurred while getting furures all open orders %s"}`, err)
// 				return
// 			}
// 			w.Header().Set("Content-Type", "application/json;charset=utf8")
// 			err = json.NewEncoder(w).Encode(orders)
// 			if err != nil {
// 				w.WriteHeader(500)
// 				_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode orders to JSON %s"}`, err)
// 			}
// 		}

// 	}
// }

// func (fh *FutureHandler) CreateOrder(w http.ResponseWriter, r *http.Request) {
// 	logger.Debug("enter futures CreateOrder ")
// 	tradeRequest := new(model.TradeGoRequest)
// 	decoder := json.NewDecoder(r.Body)
// 	err := decoder.Decode(&tradeRequest)
// 	if nil != err {
// 		logger.Errorf("error decoding request %v", err)
// 		w.WriteHeader(500)
// 		return
// 	}

// 	switch tradeRequest.Broker {
// 	case model.CryptoCom:
// 		logger.Debug("handle crypto")
// 		panic("not yet implemented")
// 	case model.Kraken:
// 		logger.Debug("handle kraken")
// 		panic("not yet implemented")

// 	case model.Binance:
// 		logger.Debug("handle binance")

// 		reqOrder := tradeRequest.Order
// 		var pair string
// 		var err error
// 		var binanceStatusCode int

// 		if reqOrder.CurrencyPair != "" {

// 			if strings.Contains(reqOrder.CurrencyPair, "_") {
// 				pair = utils.ConvertToBinanceTypePair(reqOrder.CurrencyPair)
// 			}

// 		} else {
// 			w.WriteHeader(http.StatusBadRequest)
// 			_, _ = fmt.Fprintf(w, `{"error": "currency pair is not set %s"}`, err)
// 			return
// 		}

// 		//Create Binance order
// 		binanceOrder := new(binance.BinanceFutureOrder)

// 		binanceOrder.Side = reqOrder.Side
// 		binanceOrder.Symbol = pair
// 		binanceOrder.Type = reqOrder.Type
// 		if reqOrder.Price > 0 {
// 			binanceOrder.Price = fmt.Sprintf("%.6f", reqOrder.Price)
// 		}

// 		switch reqOrder.Type {
// 		case "STOP_MARKET":

// 			if reqOrder.ActivatePrice > 0 {
// 				binanceOrder.ActivatePrice = fmt.Sprintf("%.6f", reqOrder.ActivatePrice)
// 			}
// 		case "LIMIT":
// 			if binanceOrder.Price == "" && binanceOrder.Quantity == 0 {
// 				w.WriteHeader(http.StatusBadRequest)
// 				_, _ = fmt.Fprintf(w, `{"error": %s"}`, "for LIMIT order -> price or quantity must be set")
// 				return
// 			}

// 			binanceOrder.Price = fmt.Sprintf("%.6f", reqOrder.Price)
// 		case "TRAILING_STOP_MARKET":
// 			binanceOrder.ActivatePrice = fmt.Sprintf("%.6f", reqOrder.ActivatePrice)

// 		}

// 		if reqOrder.StopPrice > 0 {
// 			binanceOrder.StopPrice = fmt.Sprintf("%.6f", reqOrder.StopPrice)
// 		}

// 		if reqOrder.OrigType != "" {
// 			binanceOrder.OrigType = reqOrder.OrigType
// 		}

// 		if reqOrder.WorkingType != "" {
// 			binanceOrder.WorkingType = reqOrder.WorkingType
// 		}

// 		logger.Debugf("binance order set price from float: %s", binanceOrder.Price)

// 		if reqOrder.TimeInForce != "" {
// 			binanceOrder.TimeInForce = reqOrder.TimeInForce
// 		}

// 		binanceOrder.Quantity = reqOrder.Quantity

// 		if reqOrder.PositionSide != "" {
// 			binanceOrder.PositionSide = reqOrder.PositionSide
// 		}

// 		binanceStatusCode, err = fh.BinanceClient.NewFutureUSDMOrder(binanceOrder)

// 		if nil != err {
// 			w.WriteHeader(binanceStatusCode)
// 			_, _ = fmt.Fprintf(w, `{"error": %s"}`, err)
// 			return
// 		}

// 		order := new(model.Order)
// 		order.ID = strconv.FormatInt(binanceOrder.OrderId, 10)
// 		order.Side = binanceOrder.Side
// 		order.Price, err = strconv.ParseFloat(binanceOrder.Price, 64)
// 		if err != nil {
// 			logger.Error("Error parsing binance price order", err)
// 			w.WriteHeader(http.StatusInternalServerError)
// 			_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode orders to JSON %s"}`, err)
// 		}
// 		order.Quantity = binanceOrder.Quantity
// 		order.Status = binanceOrder.Status
// 		order.TimeInForce = binanceOrder.TimeInForce
// 		order.Side = binanceOrder.Side
// 		order.CurrencyPair = binanceOrder.Symbol
// 		order.Type = binanceOrder.Type
// 		// TODO: check if we need an average price
// 		// order.avgPrice = binanceOrder.AvgPrice

// 		w.Header().Set("Content-Type", "application/json;charset=utf8")
// 		err = json.NewEncoder(w).Encode(order)

// 		if err != nil {
// 			logger.Error(err)
// 			w.WriteHeader(500)
// 			_, _ = fmt.Fprintf(w, `{"error": "Error occurred while trying encode orders to JSON %s"}`, err)
// 		}

// 	}

// }

// // CancelOrder cancels an order
// func (fh *FutureHandler) CancelOrder(w http.ResponseWriter, r *http.Request) {
// 	logger.Debug("enter futures CancelOrder  ")
// 	tradeRequest := new(model.TradeGoRequest)

// 	broker := r.URL.Query().Get("broker")
// 	orderId := r.URL.Query().Get("id")
// 	pair := r.URL.Query().Get("pair")

// 	if pair == "" {

// 		w.WriteHeader(http.StatusBadRequest)
// 		_, _ = fmt.Fprintf(w, `{"error": "currency pair is not set"}`)
// 		return
// 	}

// 	if orderId == "" {
// 		w.WriteHeader(http.StatusBadRequest)
// 		_, _ = fmt.Fprintf(w, `{"error": "order id  is not set"}`)
// 		return
// 	}

// 	if broker != "" {
// 		brokerType, err := strconv.Atoi(broker)
// 		if err != nil {
// 			logger.Errorf("error converting broker parameters: %v", err)
// 			w.WriteHeader(500)
// 			_, _ = fmt.Fprintf(w, `{"error": "problem occurred while request %s"}`, err)
// 		}
// 		tradeRequest.Broker = model.Broker(brokerType)
// 	} else {
// 		w.WriteHeader(500)
// 		_, _ = fmt.Fprint(w, `{"error": "broker parameter is	not set"}`)
// 		return
// 	}

// 	switch tradeRequest.Broker {
// 	case model.CryptoCom:
// 		logger.Debug("handle crypto")
// 		panic("not yet implemented")
// 	case model.Kraken:
// 		logger.Debug("handle kraken")
// 		panic("not yet implemented")

// 	case model.Binance:
// 		logger.Debug("handle binance")
// 		//convert to binance
// 		if strings.Contains(pair, "_") {
// 			pair = utils.ConvertToBinanceTypePair(pair)
// 		}

// 		bOrder, err := fh.BinanceClient.CancelFutureUSDMOrder(orderId, pair)

// 		if err != nil {
// 			logger.Error("handle binance error: ", err)
// 			w.WriteHeader(500)
// 			_, _ = fmt.Fprintf(w, `{"error": %s"}`, err)
// 			return
// 		}

// 		order := new(model.Order)
// 		order.ID = fmt.Sprintf("%d", bOrder.OrderId)
// 		order.Status = bOrder.Status
// 		order.Side = bOrder.Side
// 		order.CurrencyPair = bOrder.Symbol
// 		order.Type = bOrder.Type
// 		order.Price, err = strconv.ParseFloat(bOrder.Price, 64)
// 		if err != nil {
// 			logger.Error(err)
// 			w.WriteHeader(http.StatusInternalServerError)
// 			_, _ = fmt.Fprintf(w, `{"error": encode error - order price conversion %s"}`, err)
// 			return
// 		}

// 		order.Quantity = bOrder.Quantity

// 		w.Header().Set("Content-Type", "application/json;charset=utf8")
// 		err = json.NewEncoder(w).Encode(order)
// 		if err != nil {
// 			logger.Error(err)
// 			w.WriteHeader(500)
// 			_, _ = fmt.Fprintf(w, `{"error": encode error"}`)
// 			return
// 		}
// 	}
// }

// // get information about current open positions
// func (fh *FutureHandler) GetOpenPositions(w http.ResponseWriter, r *http.Request) {
// 	logger.Debug("enter futures GetOpenPositions  ")
// 	brokerFromRequest := r.URL.Query().Get("broker")
// 	pair := r.URL.Query().Get("pair")

// 	if brokerFromRequest != "" {
// 		brokerType, err := strconv.Atoi(brokerFromRequest)
// 		if err != nil {
// 			logger.Errorf("error converting broker parameters: %v", err)
// 			w.WriteHeader(500)
// 			_, _ = fmt.Fprintf(w, `{"error": "problem occurred while request %s"}`, err)
// 		}
// 		broker := model.Broker(brokerType)
// 		switch broker {
// 		case model.CryptoCom:
// 			logger.Debug("handle crypto")
// 			panic("not yet implemented")
// 		case model.Kraken:
// 			logger.Debug("handle kraken")
// 			panic("not yet implemented")

// 		case model.Binance:
// 			logger.Debug("handle binance")
// 			if pair != "" {
// 				// get only positions for specified pair
// 				//convert pair  to binance style
// 				if strings.Contains(pair, "_") {
// 					pair = utils.ConvertToBinanceTypePair(pair)
// 				}
// 			}
// 			positions, err := fh.BinanceClient.GetCurrentPositionInfo(pair)
// 			if err != nil {
// 				logger.Error("handle binance error: ", err)
// 				w.WriteHeader(500)
// 				_, _ = fmt.Fprintf(w, `{"error": %s"}`, err)
// 				return
// 			}

// 			w.Header().Set("Content-Type", "application/json;charset=utf8")
// 			err = json.NewEncoder(w).Encode(positions)
// 			if err != nil {
// 				logger.Error(err)
// 				w.WriteHeader(500)
// 				_, _ = fmt.Fprintf(w, `{"error": encode error"}`)
// 				return
// 			}

// 		}

// 	} else {
// 		w.WriteHeader(500)
// 		_, _ = fmt.Fprint(w, `{"error": "broker parameter is	not set"}`)
// 		return
// 	}

// }
