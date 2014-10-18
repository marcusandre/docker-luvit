
TAG ?= luvit
DOCKER ?= docker

build:
	$(DOCKER) build -t $(TAG) .

run:
	$(DOCKER) run -i -t $(TAG)

.PHONY: build run
