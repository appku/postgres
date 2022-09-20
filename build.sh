#!/bin/sh

# run in script location
cd $(dirname "$(realpath "$0")")
APPKU_POSTGRES_VERSION=$(head -1 ./VERSION)
if [[ -z "$1" || "$1" == "postgres" || "$1" == "latest" ]]; then
    docker build --build-arg APPKU_POSTGRES_VERSION=$APPKU_SQLSERVER_VERSION . -t appku/postgres:latest -t appku/postgres:$APPKU_POSTGRES_VERSION
fi