# Building with Podman

## Setup

1. Start Podman machine (if not already running):
```bash
podman machine start
```

2. Build the Docker image:
```bash
podman build -t jbake-site .
```

## Building the site

### Option 1: Using the helper script
```bash
./build-with-podman.sh
```

### Option 2: Manual run
```bash
mkdir -p build/jbake
podman run --rm -v "$(pwd)/build/jbake:/app/build/jbake" jbake-site
```

The built site will be in `build/jbake/` directory.

## Notes

- Podman runs in a Linux VM on macOS, which has proper x86_64 architecture support
- The build avoids all the JNA arm64 compatibility issues we encounter with local Gradle builds
- Output is mounted back to your host machine in the `build/jbake/` directory
