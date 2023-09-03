#!/bin/env bash
#set -x


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
#export KEYCLOAK_URL="http://localhost:7080/auth/realms/basic"

export KEYCLOAK_URL="$2"
export KEYCLOAK_INTROSPECT_URL="$KEYCLOAK_URL/protocol/openid-connect/token/introspect"
export KEYCLOAK_CLIENT_ID="backend"
export KEYCLOAK_SECRET="16c3384b-725d-410d-8107-df3319165f70"
#export KEYCLOAK_SECRET="T8JL4ZnuUVctC7LyyjDZN04EZHO5LLxz"


run_maven () {
    mvn    clean test

}

run_gradle () {
    java --version
    # find ~/.gradle -type f -name "*.lock" -delete
    # $SCRIPT_DIR/gradlew --info test --tests *ReportApiTest.testFindOneReport
   # $SCRIPT_DIR/gradlew  test  --tests *ExpenseApiTest.testDeleteExpense
      $SCRIPT_DIR/gradlew test -i  -Dorg.gradle.jvmargs=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5006
    #$SCRIPT_DIR/gradlew  --console=plain quarkusDev
    exit
}


usage(){
  echo
  echo "Usage: $0 [options...] <keycloak-url>"
  echo
  echo "url example http://localhost:7080/auth/realms/basic "
  echo
  echo " options:"
  echo "       gradle - for gradle build and test -> very fast"
  echo
  echo "       maven - for slow and old maven build "

  echo
}

if [ "X$2" == "X" ] ; then
     echo
     echo "keycloak url should be set as second param"

     usage
     exit 1
else
    echo "using keycloak url: $2"
fi



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
