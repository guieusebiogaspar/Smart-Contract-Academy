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

echo "Docker daemon is running"

docker run --rm -p 8100:80 moodlehq/moodleapp:4.0.0