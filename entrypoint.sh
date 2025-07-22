#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "✅ Container is starting..."

# If the first argument looks like a flag (e.g., `-p`, `--help`), pass it to the default command
if [[ "$1" == -* ]]; then
  exec npm run serve "$@"
else
  # Otherwise, execute the given command
  exec "$@"
fi

