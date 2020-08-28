  
#!/bin/bash

set -eu

export AMI_ID=$(buildkite-agent meta-data get AMI_ID)

echo "steps:"
echo "  - command: echo \"do this\""