#!/bin/bash
set -euo pipefail

echo "Testing strict mode"

echo $UNDEFINED_VAR   # set -u test

false                 # set -e test

echo "hello" | grep "bye" | cat   # pipefail test

