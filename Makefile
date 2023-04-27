GOPATH:=$(shell go env GOPATH)
commit_ts:=$(shell git log -1 --format="%ct")
current_time:=$(shell date +"%Y-%m-%d %H:%M:%S")
git_version:=$(shell git log -1 --format="%h")
go_version:=$(shell go version)

build:
	go mod tidy
	go build -v -gcflags "all=-N -l"

remote:
