# go run -ldflags "-X github.com/nshttpd/mikrotik-exporter/cmd.version=6.6.7-BETA -X github.com/nshttpd/mikrotik-exporter/cmd.shortSha=`git rev-parse HEAD`" main.go version

VERSION=`cat VERSION`
SHORTSHA=`git rev-parse --short HEAD`

LDFLAGS=-X github.com/nshttpd/mikrotik-exporter/cmd.version=$(VERSION)
LDFLAGS+=-X github.com/nshttpd/mikrotik-exporter/cmd.shortSha=$(SHORTSHA)

build:
	go build -ldflags "$(LDFLAGS)" .

utils:
	go get github.com/mitchellh/gox
	go get github.com/tcnksm/ghr
