#!/bin/bash
docker rm -f ethminer-kawazzz
docker run \
  -d --restart always \
  -v ~/.ethash:/.ethash \
  --log-driver json-file \
  --log-opt max-size=5m \
  --log-opt max-file=3 \
  --name ethminer-kawazzz \
  kawaz/ethminer
