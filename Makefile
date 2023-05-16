#!/usr/bin/make -f
DOCKER := $(shell which docker)
DOCKER_IMAGE := malteherrmann/testprivatedocker
COMMIT_HASH := $(shell git rev-parse --short=7 HEAD)
DOCKER_TAG := $(COMMIT_HASH)

build:
	go build -o build/ ./...

build-docker:
	$(DOCKER) build -t ${DOCKER_IMAGE}:${DOCKER_TAG} .
	$(DOCKER) tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest
#	# move the binaries to the ./build directory
#	mkdir -p ./build/
#	$(DOCKER) cp evmos:/usr/bin/evmosd ./build/