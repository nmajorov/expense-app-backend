#!/bin/env bash


#get current script dir
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR

echo "run with postgresql profile"
export POSTGRESQL_SERVICE_NAME=127.0.0.1

export POSTGRESQL_USER=fuse
export POSTGRESQL_PASSWORD=fuse
export POSTGRESQL_DATABASE=fuse

echo $(env | grep POSTGRESQL)

$SCRIPT_DIR/mvnw  clean test
