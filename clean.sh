#!/bin/bash

# Check if the Docker daemon is running
if ! pgrep Docker > /dev/null; then
    echo "Docker daemon starting..."
    # Start the Docker daemon
    open /Applications/Docker.app
    sleep 10
fi

# Check if the Docker is ready to accept connections
while ! docker info &> /dev/null; do
    echo "Docker daemon not ready to accept connections yet, waiting..."
    sleep 10
done

# Delete all dangling images
docker image prune -f --filter "dangling=true"
