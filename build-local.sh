#!/bin/bash
# Build script for macOS arm64 local development

set -e

# Check if Java 11 is installed
if ! command -v java &> /dev/null; then
    echo "❌ Java not found. Please install OpenJDK 11:"
    echo "   brew install openjdk@11"
    exit 1
fi

# Set up environment for Java 11
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export JAVA_HOME=/opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home

echo "✓ Using Java: $(java -version 2>&1 | head -1)"

# Clean gradle cache to avoid issues
echo "Cleaning Gradle cache..."
rm -rf .gradle

# Build the site
echo "Building site with Gradle..."
./gradlew clean bake -Djna.library.path=/opt/homebrew/opt/openjdk@11/lib

echo ""
echo "✅ Build complete!"
echo "Output: build/jbake/"
ls -lh build/jbake/index.html
