package server

type BrokerStatus struct {
	//	model.Broker `json:"broker"`
	Ok bool `json:"ok"`
}

type ServerStatus struct {
	//	Brokers []BrokerStatus `json:"brokers"`
	Version string ` json:"version"`
}

// VersionInfo describes the build information returned by the /version endpoint.
type VersionInfo struct {
	Version   string `json:"version"`
	Sha1Ver   string `json:"sha1ver"`
	BuildTime string `json:"buildTime"`
}
