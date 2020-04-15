#!/bin/bash

set -eu
 
STEP_ONE=`buildkite-agent step get "outcome" --step "step-two"`

echo "HERE"
echo "$STEP_ONE"

if [[ "$STEP_ONE" == "passed" ]]; then
    .buildkite/deploy-pipeline.sh | buildkite-agent pipeline upload
fi