#!/bin/env bash

echo "run quarkus development agains remote sso"

#get current script dir
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR

echo "run with postgresql profile"
export POSTGRESQL_SERVICE_NAME="127.0.0.1"


export POSTGRESQL_USER=keycloak
export POSTGRESQL_PASSWORD=keycloak
export POSTGRESQL_DATABASE=root

echo $(env | grep POSTGRESQL)



# keycloak properties
export KEYCLOAK_URL="https://keycloak-nm-sso.apps.ocp001.rhlab.ch/auth/realms/basic"
export KEYCLOAK_INTROSPECT_URL="$KEYCLOAK_URL/protocol/openid-connect/token/introspect"
export KEYCLOAK_CLIENT_ID="backend"
export KEYCLOAK_SECRET="16c3384b-725d-410d-8107-df3319165f70"
#export KEYCLOAK_SECRET="b530c9d1-45f0-4f30-87d2-471530534c4a"


#mvn  clean compile test
mvn clean quarkus:dev 
