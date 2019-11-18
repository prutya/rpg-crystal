#!/bin/sh
set -eo pipefail

shards check || shards install
echo "✓ Shards are up-to-date"

exec "$@"
