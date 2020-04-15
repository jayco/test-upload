#!/bin/bash

set -eu
 
if [[ `buildkite-agent step get "outcome" --step "first"` == "passed" ]]; then
    .buildkite/deploy-pipeline.sh | buildkite-agent pipeline upload
fi