.PHONY: build test lint run

build:
	go build -o bin/netwatch ./cmd/netwatch

test:
	go test -race ./...

lint:
	golangci-lint run

run: build
	./bin/netwatch