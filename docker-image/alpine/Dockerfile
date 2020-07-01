FROM alpine:3.10

ARG ARG1

RUN apk add --no-cache --virtual .tmp curl \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | sh -s -- -y \
    && mkdir /var/lib/vector/ \
    && mkdir /vector/ \
    && source ~/.profile \
    && apk del .tmp

WORKDIR /vector
COPY ./entrypoint.sh /vector/
COPY ./conf /root/.vector/conf

ENV VECTOR_TOML=${ARG1}

CMD ["sh", "/vector/entrypoint.sh"]
