.PHONY: all
.DEFAULT_GOAL := all

go-stubs:
	 protoc -I followservice/ followservice/follow.proto --go_out=plugins=grpc:followservice
	 protoc -I mailservice/ mailservice/msmail.proto --go_out=plugins=grpc:mailservice

ruby-stubs:
	 grpc_tools_ruby_protoc -I mailservice --ruby_out=mail-ruby-client --grpc_out=mail-ruby-client mailservice/msmail.proto

all: go-stubs ruby-stubs
