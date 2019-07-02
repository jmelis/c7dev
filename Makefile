IMAGE := quay.io/jmelis/c7dev:latest

.PHONY: build
build:
	docker build -t $(IMAGE) .

.PHONY: run
run:
	docker run --rm -it $(IMAGE)