package config

import (
	"fmt"
	"os"
	"reflect"
	"testing"
)

func TestConfig_parseYAML(t *testing.T) {
	type args struct {
		filename string
	}

	tests := []struct {
		name    string
		args    args
		want    *Config
		wantErr bool
	}{
		{
			"test_config_valid.yaml",
			args{"test_config_valid.yaml"},
			&Config{
				Database: Database{
					Type:          "mysql",
					ConnectionURL: "user:pass@tcp(127.0.0.1:3306)/dbname?charset=utf8mb4&parseTime=True&loc=Local",
				},
				Web: Web{
					PortWeb: 7000,
					Verbose: false,
				},
			},
			false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			log.Printf("\n ---- run test %#v  filename: %#v ----", tt.name, tt.args.filename)

			//dir, err := filepath.Abs(filepath.Dir(os.Args[0]))

			// get current dir
			dir, err := os.Getwd()

			if err != nil {
				log.Panicf("can't get current dir %v", err)
			}

			//read the file first
			data, err := os.ReadFile(fmt.Sprintf("%s/%s", dir, tt.args.filename))

			if err != nil {
				log.Panicf("cannot read data: %v", err)

			}

			//simulate coming from decrypter
			got := Init(string(data))
			//log.Printf("error: %v and tt.want %v", (err != nil), tt.wantErr)

			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Config  = %v, want %v", got, tt.want)
			}
		})
	}
}
