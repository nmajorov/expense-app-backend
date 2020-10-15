#!/usr/bin/bash

echo "emulate react app call to keycloak"

USER_NAME=niko
PASSWORD=niko

export access_token=$(\

    curl -v  -X POST "http://localhost:7080/auth/realms/basic/protocol/openid-connect/token" \
    -H 'content-type: application/x-www-form-urlencoded' \
    -d "grant_type=password&username=$USER_NAME&password=$PASSWORD&client_id=app-react" | jq --raw-output '.access_token' \
)

echo "access_token: $access_token"


echo "call with token"

curl -v -X GET \
  http://localhost:8080/expenses?report_id=1 \
  -H "Authorization: Bearer "$access_token

echo 
echo 
echo "call not authenticated"

curl -v -X GET \                                                                                                                                http://localhost:8080/expenses?report_id=1


