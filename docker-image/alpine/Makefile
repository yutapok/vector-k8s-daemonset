NAME := vector-s3

.PHONY: build
	tar -czh . | docker build --network host --no-cache . \
		-t ${NAME}:latest \
		-f Dockerfile \
		--build-arg ARG1=conf/${NAME}.toml \
