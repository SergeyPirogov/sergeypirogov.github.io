#!/bin/bash

# Stop all Gradle daemons
./gradlew --stop 2>/dev/null || true

# Clean lock files
rm -f ~/.gradle/caches/modules-2/modules-2.lock
rm -f ~/.gradle/caches/journal-1/journal-1.lock

# Kill any lingering Gradle processes
pkill -f "GradleDaemon" || true

sleep 2

# Run the build
./gradlew clean bake -Djna.library.path=/opt/homebrew/opt/openjdk@11/lib

# Watch for changes
echo "Build complete. Watching for changes..."
