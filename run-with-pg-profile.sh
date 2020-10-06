#!/bin/env bash


#get current script dir
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR

echo "run with postgresql profile"
export POSTGRESQL_SERVICE_NAME=127.0.0.1


export POSTGRESQL_USER=keycloack
export POSTGRESQL_PASSWORD=keycloack
export POSTGRESQL_DATABASE=root

echo $(env | grep POSTGRESQL)



# keycloak properties
export KEYCLOAK_URL="http://localhost:7080/auth/realms/basic"
export KEYCLOAK_INTROSPECT_URL="$KEYCLOAK_URL/protocol/openid-connect/token/introspect"
export KEYCLOAK_CLIENT_ID="backend"
export KEYCLOAK_SECRET="b530c9d1-45f0-4f30-87d2-471530534c4a"


$SCRIPT_DIR/mvnw  clean compile quarkus:dev
