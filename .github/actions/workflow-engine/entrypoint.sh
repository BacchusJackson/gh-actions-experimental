#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

ls -lah
pwd

workflow-engine run all --verbose --semgrep-experimental

