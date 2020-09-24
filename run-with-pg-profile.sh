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



# keycloak properties
export KEYCLOAK_URL="http://localhost:7080/auth/realms/geektour"
export KEYCLOAK_INTROSPECT_URL="$KEYCLOAK_URL/protocol/openid-connect/token/introspect"
export KEYCLOAK_CLIENT_ID=geektourclient
export KEYCLOAK_SECRET=1fa6301c-7f86-4c3f-abee-d0bcb506fbc5


$SCRIPT_DIR/mvnw  clean compile quarkus:dev
