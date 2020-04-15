#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -eu

echo "steps:"
echo "  - command: \"echo Deploy!\""
echo "    label: \":rocket:\""
echo "    key: \"step3\""
echo "    depends_on: \"step2\""