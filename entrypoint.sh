#!/bin/sh
set -e

# ignore using `exec` to get another pid instead of `1`
# exec "$@"
"$@"

