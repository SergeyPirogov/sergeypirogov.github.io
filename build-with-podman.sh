#!/bin/bash
# Build and run JBake with Podman

set -e

echo "Starting Podman machine..."
podman machine start || true

echo "Building site with Podman..."
podman run --rm -v "$(pwd)/build/jbake:/app/build/jbake" localhost/jbake-site

echo "Build complete! Output in: build/jbake/"
ls -la build/jbake/index.html
