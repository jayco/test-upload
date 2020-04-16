#!/bin/bash

set -eu
 
echo "HERE"
echo `buildkite-agent step get "outcome" --step "step1"`

if [[ `buildkite-agent step get "outcome" --step "step1"` == "passed" ]]; then
    .buildkite/deploy-pipeline.sh | buildkite-agent pipeline upload
fi