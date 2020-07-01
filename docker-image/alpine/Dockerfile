FROM alpine:3.10

ARG ARG1

RUN apk add --no-cache --virtual .tmp curl \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | sh -s -- -y \
    && mkdir /root/.vector/ \
    && apk del .tmp

COPY ./entrypoint.sh /
ENV VECTOR_TOML=${ARG1}

CMD ["sh", "/entrypoint.sh"]
