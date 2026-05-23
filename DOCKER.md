# Docker/Podman Setup for JBake Static Site Builder

This project includes Docker and Podman configurations for building and watching the JBake static site.

## Prerequisites

### For Docker:
- Docker Desktop or Docker Engine installed
- Docker Compose v1.29+

### For Podman:
- Podman installed (`brew install podman` on macOS)
- Podman Compose (`pip install podman-compose`)

## Quick Start

### Using Docker

```bash
# Build and watch with auto-rebuild on file changes
docker-compose up --build

# Or just build without watching
docker-compose run --rm jbake-builder ./gradlew clean bake

# Rebuild on demand
docker-compose exec jbake-builder ./gradlew bake
```

### Using Podman

```bash
# Build and watch with auto-rebuild on file changes
podman-compose -f podman-compose.yml up --build

# Or just build without watching
podman-compose -f podman-compose.yml run --rm jbake-builder ./gradlew clean bake

# Rebuild on demand
podman-compose -f podman-compose.yml exec jbake-builder ./gradlew bake
```

## File Watching

The container automatically watches for changes in `src/jbake/` directory:
- **Templates** (`src/jbake/templates/`)
- **Content** (`src/jbake/content/`)
- **Assets** (`src/jbake/assets/`)

When changes are detected, the site is automatically rebuilt.

## Output

- Built site: `build/jbake/` (mounted from container)
- Logs: printed to container stdout

## Volume Mounting

- `.:/workspace` - Project directory
- `gradle-cache:/root/.gradle` - Gradle cache (persisted between runs)

The Podman compose uses `:Z` flag for SELinux compatibility.

## Environment Variables

Edit `.env` file to customize:
- `GRADLE_OPTS` - JVM memory settings
- `COMPOSE_PROJECT_NAME` - Container/volume naming prefix

## Troubleshooting

### Container won't start
```bash
# Check logs
docker-compose logs -f jbake-builder

# Remove old container
docker-compose down -v
docker-compose up --build
```

### File watching not triggering rebuilds
- Ensure Docker has file sharing permissions
- Check file system is case-sensitive (Docker Desktop on macOS)
- Try rebuilding manually: `docker-compose exec jbake-builder ./gradlew bake`

### Gradle build hangs
- Increase memory: Edit `.env` and set `GRADLE_OPTS=-Xmx2048m`
- Clear Gradle cache: `docker-compose down -v && docker-compose up --build`

## Building for Production

```bash
# Build optimized site in container
docker-compose run --rm jbake-builder ./gradlew clean bake

# Output is in build/jbake/ ready for deployment
```

## Network Access

- Default HTTP port: `8000` (for testing with local server if needed)
- Mapped from container to host

## Cleanup

```bash
# Stop and remove containers
docker-compose down

# Also remove volumes
docker-compose down -v

# Remove image
docker-compose down --rmi all
```
