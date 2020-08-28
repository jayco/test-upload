  
#!/bin/bash

set -eu

export AMI_ID=$(buildkite-agent meta-data get AMI_ID)

echo "steps:"
echo "  - command: echo \"do this\""

echo "notify:"
echo "  - slack:"
echo "      channels:"
echo "        - \"#bk\""
echo "       message: \":tada: This passed for this\""
echo "    if: build.state == \"passed\""