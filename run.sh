#!/bin/bash

# Check if the operating system is Windows
if [[ "$OSTYPE" == "msys"* ]]; then
    # Check if the Docker daemon is running
    if ! docker info > /dev/null 2>&1; then
        echo "Docker daemon starting..."
        # Start the Docker daemon
        "/c/Program Files/Docker/Docker/Docker Desktop.exe" &
        sleep 1
    fi
else
    # Check if the Docker daemon is running
    if ! pgrep Docker > /dev/null; then
        echo "Docker daemon starting..."
        # Start the Docker daemon
        open /Applications/Docker.app
        sleep 10
    fi
fi

# Check if the Docker is ready to accept connections
while ! docker info &> /dev/null; do
    echo "Docker daemon not ready to accept connections yet, waiting..."
    sleep 10
done

docker-compose up