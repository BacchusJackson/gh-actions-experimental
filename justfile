# Define the Go project name

PROJECT_NAME := "gh-actions-experimental"

# Define platforms


release version:
    #!/usr/bin/env bash
    if [[ -n $(git status --short) ]]; then
        echo "repository has uncommitted changes. Exit 1"
        exit 1
    else
        echo "repository is clean"
    fi
    echo "create tag: {{ version }}"
    git tag {{ version }}
    git push origin {{ version }}
    gh run watch

