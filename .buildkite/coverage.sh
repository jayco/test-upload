#!/bin/bash

set -eu
 
echo "HERE"
echo `buildkite-agent step get "outcome" --step "step-two"`

if [[ `buildkite-agent step get "outcome" --step "step-two"` == "passed" ]]; then
    .buildkite/deploy-pipeline.sh | buildkite-agent pipeline upload
fi