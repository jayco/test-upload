#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -eu

export SOME_VALUE=1

if [SOME_VALUE == 1]; then

    # begin the pipeline.yml file
    echo "steps:"

    # add a new command step to run the tests in each test directory
    for test_dir in test/*/; do
    echo "  - command: \"echo "do this"\""
    echo "    label: \"extra step\""
    done

fi