FROM eclipse-temurin:11-jdk-focal

# Install required tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    inotify-tools \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Copy the project
COPY . /workspace/

# Make gradlew executable
RUN chmod +x ./gradlew

# Create gradle cache directory
RUN mkdir -p ~/.gradle/caches

# Expose port for local server (if needed for testing)
EXPOSE 8000

# Default command: build and watch
CMD ["./gradlew", "clean", "bake"]
