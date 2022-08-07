protoc: protoc --proto_path=proto/ proto/*.proto --plugin=$(go env GOPATH)/bin/protoc-gen-go-grpc --go-grpc_out=. --go_out=.

client:
	go run cmd/client/client.go
server:
	go run cmd/server/server.go

.PHONY: protoc client server