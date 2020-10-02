image = infrastructureascode/scratch
arch = $(shell uname -m)

all: $(arch)
	docker push $(image):$(tag)

armv6l:
	$(eval tag = latest-armv6)
	docker build -f arm32v6.Dockerfile --rm -t $(image):$(tag) .

aarch64:
	$(eval tag = latest-arm64v8)
	docker build -f arm64v8.Dockerfile --rm -t $(image):$(tag) .

x86_64:
	$(eval tag = latest-amd64)
	docker build -f amd64.Dockerfile --rm -t $(image):$(tag) .
