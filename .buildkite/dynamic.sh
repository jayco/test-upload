#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -eu

channel="#general"

if [["${BUILDKITE_BUILD_CREATOR_EMAIL}" == "test@example.com"]]; then
    channel = "@slackuser"
fi



# begin the pipeline.yml file
echo "notify:"
echo "  - slack: ${channel}"
echo "steps:"
echo "  - command: echo 'do this'"
