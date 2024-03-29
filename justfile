# Define the Go project name
PROJECT_NAME := "gh-actions-experimental"

# Define platforms
PLATFORMS := "windows" "darwin" "linux"
ARCHITECTURES := "386" "amd64"

# Cross-compile for all platforms
build:
    # Create the dist directory if it doesn't exist
    mkdir -p dist
    # Loop over each platform and architecture
    for platform in {{PLATFORMS}}; do \
        for arch in {{ARCHITECTURES}}; do \
            echo "Building for $$platform/$$arch..."; \
            # Set the GOOS and GOARCH environment variables
            GOOS=$$platform GOARCH=$$arch \
            # Compile the binary
            go build -o dist/{{PROJECT_NAME}}-$$platform-$$arch {{.GO_FILES}}; \
        done; \
    done

