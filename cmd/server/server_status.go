package server

type BrokerStatus struct {
	//	model.Broker `json:"broker"`
	Ok bool `json:"ok"`
}

type ServerStatus struct {
	//	Brokers []BrokerStatus `json:"brokers"`
	Version string ` json:"version"`
}
