#!/bin/bash

set -eu
 
echo "HERE"
echo `buildkite-agent step get "outcome" --step "step2"`

if [[ `buildkite-agent step get "outcome" --step "step2"` == "passed" ]]; then
    .buildkite/deploy-pipeline.sh | buildkite-agent pipeline upload
fi