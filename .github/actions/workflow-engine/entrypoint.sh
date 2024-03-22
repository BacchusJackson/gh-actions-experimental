#!/bin/sh -l

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

ls -lah
pwd

workflow-engine run all --verbose --semgrep-experimental
