
# Needed SHELL since I'm using zsh
SHELL := /bin/bash
VERSION := "0.0.1-dev"

ts := $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")
LD_FLAGS:="-X github.com/nmajorov/expense-app-backends/cmd/server.version=$(VERSION) -X github.com/nmajorov/expense-app-backend/cmd/server.sha1ver=$(shell git rev-parse HEAD) -X gitlab.com/nmajorov/nmql-server/cmd/server.buildTime=$(ts)"
# Allow setting of go build flags from the command line.
GOFLAGS :=-mod=vendor
OUTPUT := "bin/expense-app-backend"
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/')"


.PHONY: dep
dep: ## check dependencies
	go mod vendor -v
	go mod tidy

# only mod vendor is option to list versions
# https://github.com/golang/go/issues/35224
.PHONY: list
list: ## list dependencies
	go mod vendor -v


all: help


dev: ##  run  in dev mode
	@echo "run in dev mode"
	go run $(GOFLAGS) main.go


.PHONY: test
test: ##  run tests
	@echo "run tests"
	GO111MODULE=on go test $(GOFLAGS) -v ./...


.PHONY: build
build: ##  build everything
# Use deps from vendor dir.




	go build $(GOFLAGS)  -ldflags  $(LD_FLAGS) -v  -o $(OUTPUT) main.go


.PHONY: vet
vet: ## Check for syntax errors
	 go vet   ./...

.PHONY: clean
clean: ## clean build
	 go clean $(GOFLAGS)  ./...
 	 $(shell if [ -d "./bin" ] ; then rm -r ./bin; fi)

.PHONY: docker-build
docker-build: ## build docker image
	podman build -t  docker.io/nmajorov/expense-app-backend:$(VERSION) .


.PHONY: docker-push
docker-push: ## push docker image to registry
	podman push docker.io/nmajorov/expense-app-backend:$(VERSION)


###################
# Unit/CI Testing #
###################
#unit: verify
#	@echo "go test SDK and vendor packages"
#	go test -tags ${UNIT_TEST_TAGS} ${SDK_ALL_PKGS}

#unit-with-race-cover: verify
#	@echo "go test SDK and vendor packages"
#	go test -tags ${UNIT_TEST_TAGS} -race -cpu=1,2,4 ${SDK_ALL_PKGS}
