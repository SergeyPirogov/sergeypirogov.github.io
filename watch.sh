#!/bin/bash
# Watch mode: rebuild on file changes and serve locally

set -e

# Check if fswatch is installed
if ! command -v fswatch &> /dev/null; then
    echo "❌ fswatch not found. Install with:"
    echo "   brew install fswatch"
    exit 1
fi

PORT=${1:-8000}

# Function to build
build_site() {
    echo ""
    echo "📦 Rebuilding site..."
    export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
    export JAVA_HOME=/opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
    rm -rf .gradle
    ./gradlew clean bake -Djna.library.path=/opt/homebrew/opt/openjdk@11/lib 2>&1 | tail -20
    echo "✅ Build complete at $(date)"
}

# Initial build
build_site

# Start web server in background
echo ""
echo "🌐 Starting web server on http://localhost:$PORT"
echo "📂 Serving: build/jbake/"
echo ""
echo "👀 Watching for changes..."
echo "Press Ctrl+C to stop"
echo ""

cd build/jbake
python3 -m http.server $PORT &
SERVER_PID=$!

# Clean up on exit
trap "kill $SERVER_PID 2>/dev/null; exit" INT TERM

# Go back to repo root for watching
cd - > /dev/null

# Watch for changes
fswatch -r src .github/workflows build.gradle gradle.properties 2>/dev/null | while read -r file; do
    echo ""
    echo "📝 File changed: $file"
    build_site
done

kill $SERVER_PID 2>/dev/null
