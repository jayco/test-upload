#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -eu

channel="#general"

if [[ "${BUILDKITE_BUILD_CREATOR_EMAIL}" == "test@example.com" ]]; then
    channel="@hipcog"
fi

echo "steps:"
echo "    - command: echo 'do this'"
echo "notify:"
echo "    - slack: \"${channel}\""
