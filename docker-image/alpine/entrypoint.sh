#!/usr/bin/dumb-init /bin/sh

source /root/.profile
exec vector --config /root/.vector/${VECTOR_TOML}
