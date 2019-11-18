#!/bin/bash
set -exo pipefail

docker info > /dev/null
echo "✓ Docker daemon is up"

docker-compose run --rm app-test sh -c '
  ./lib/ameba/bin/ameba \
  && crystal spec
'
