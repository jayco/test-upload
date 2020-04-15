#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -eu

echo "steps:"
echo "  - command: \"echo Deploy!\""
echo "    label: \":rocket:\""
echo "    key: \"step-three\""
echo "    depends_on: \"step-two\""