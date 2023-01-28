MODULE = $(shell go list -m)

CONFIG_FILE ?= ./config/local.yml

.PHONY: default
default: help

.PHONY: help
help: ## help information about make commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: run
run: ## run the server
	go run cmd/server/main.go -config ${CONFIG_FILE}

.PHONY: build
build:  ## build the server binary
	CGO_ENABLED=0 go build -o server $(MODULE)/cmd/server

.PHONY: build-docker
build-docker: ## build the API server as a docker image
	docker build -f cmd/server/Dockerfile -t server .
