NAME := vector-s3

.PHONY: build-s3
build-s3:
	tar -czh . | docker build - --network host --no-cache \
		-t ${NAME}:latest \
		-f Dockerfile \
		--build-arg ARG1=conf/${NAME}.toml
