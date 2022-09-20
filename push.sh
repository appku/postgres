#!/bin/sh

# run in script location
cd $(dirname "$(realpath "$0")")
APPKU_POSTGRES_VERSION=$(head -1 ./VERSION)
if [[ -z "$1" || "$1" == "postgres" || "$1" == "latest" ]]; then
    echo "Pushing Postgres v$APPKU_POSTGRES_VERSION..."
    docker push appku/postgres:latest
    docker push appku/postgres:$APPKU_POSTGRES_VERSION
fi