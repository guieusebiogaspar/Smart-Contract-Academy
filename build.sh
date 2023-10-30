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

dos2unix 4.1/debian-11/prebuildfs/opt/bitnami/scripts/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/locales/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/apache/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/php/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/apache-modphp/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/moodle/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/mysql-client/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/scripts/postgresql-client/*.sh
dos2unix 4.1/debian-11/rootfs/opt/bitnami/pst-ini.d/*.sh
dos2unix 4.1/debian-11/rootfs/*.sh

dos2unix mariadb/debian-11/prebuildfs/opt/bitnami/scripts/*.sh
dos2unix mariadb/debian-11/rootfs/opt/bitnami/scripts/*.sh
dos2unix mariadb/debian-11/rootfs/opt/bitnami/scripts/mariadb/*.sh


cd 4.1/debian-11

docker build -t moodle:latest .

cd ../../mariadb/debian-11

docker build -t mariadb:latest .

cd ../..

python apply_permissions.py