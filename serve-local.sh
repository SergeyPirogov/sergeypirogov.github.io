#!/bin/bash
# Open the built site locally in a web server

set -e

# Check if site has been built
if [ ! -f "build/jbake/index.html" ]; then
    echo "❌ Site not built yet. Run ./build-local.sh first"
    exit 1
fi

# Default port
PORT=${1:-8000}

echo "🌐 Starting web server on http://localhost:$PORT"
echo "📂 Serving: build/jbake/"
echo ""
echo "Press Ctrl+C to stop"
echo ""

cd build/jbake
python3 -m http.server $PORT
