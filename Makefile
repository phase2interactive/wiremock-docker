VERSION=2.19.0

# TODO: update to build both alpine and windows images

build:
	docker build --build-arg VERSION=$(VERSION) -t phase2online/wiremock:$(VERSION) .

push:
	docker push phase2online/wiremock:$(VERSION)

.PHONY: build push