#!/usr/bin/dumb-init /bin/sh

exec vector --config /root/.vector/${VECTOR_TOML}
