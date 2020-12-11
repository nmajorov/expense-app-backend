#!/usr/bin/bash

echo "emulate react app call to keycloak"

USER_NAME=niko
PASSWORD=niko

KEYCLOAK_URL="http://sso-test-nm-demo.apps.ocp-cluster-1.rhlab.ch"


BACKEND_URL="http://expenses-backend-quarkus-nm-demo.apps.ocp-cluster-1.rhlab.ch"

export access_token=$(\

    curl -v  -X POST "$KEYCLOAK_URL/auth/realms/basic/protocol/openid-connect/token" \
    -H 'content-type: application/x-www-form-urlencoded' \
    -d "grant_type=password&username=$USER_NAME&password=$PASSWORD&client_id=app-react" | jq --raw-output '.access_token' \
)

echo "access_token: $access_token"

echo
echo
echo "call with token"

curl -v  $BACKEND_URL/expenses?report_id=1 \
  -H "Authorization: Bearer "$access_token -H  "accept: application/json"


exit 0







echo 
echo 
echo "call not authenticated"

curl -v -X GET  http://localhost:8080/expenses?report_id=1


