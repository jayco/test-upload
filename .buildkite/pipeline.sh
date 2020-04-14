#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -e

a=10
 
if [[ "$a" == "10" ]]; then
  echo "steps:"
  echo "  - command: \"echo Deploy!\""
  echo "    label: \":rocket:\""
fi