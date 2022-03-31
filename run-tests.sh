#!/bin/env bash
set -x


#get current script dir
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$SCRIPT_DIR" || exit

echo "run with postgresql"
export POSTGRESQL_SERVICE_NAME=127.0.0.1

export POSTGRESQL_USER=keycloak
export POSTGRESQL_PASSWORD=keycloak
export POSTGRESQL_DATABASE=root


# shellcheck disable=SC2005
echo $(env | grep POSTGRESQL)

# keycloak properties
export KEYCLOAK_URL="http://localhost:7080/auth/realms/basic"
export KEYCLOAK_INTROSPECT_URL="$KEYCLOAK_URL/protocol/openid-connect/token/introspect"
export KEYCLOAK_CLIENT_ID="backend"
#export KEYCLOAK_SECRET="b530c9d1-45f0-4f30-87d2-471530534c4a"
export KEYCLOAK_SECRET="16c3384b-725d-410d-8107-df3319165f70"

run_maven () {
    mvn    clean test

}

run_gradle () {

    # find ~/.gradle -type f -name "*.lock" -delete
    # $SCRIPT_DIR/gradlew --info test --tests *ReportApiTest.testFindOneReport
   # $SCRIPT_DIR/gradlew  test  --tests *ExpenseApiTest.testDeleteExpense
     $SCRIPT_DIR/gradlew  test
    exit
}

case "$1" in
  gradle)
      run_gradle
      ;;
  mvn)
     run_maven
      ;;
  *)
     run_maven
  ;;
esac
