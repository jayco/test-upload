#!/bin/bash

set -eu
 

if [[ `buildkite-agent step get "outcome" --step "step1"` == "passed" ]]; then
    .buildkite/deploy-pipeline.sh | buildkite-agent pipeline upload
fi