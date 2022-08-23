#!/bin/env bash


#get current script dir
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR

echo "script dir: ${SCRIPT_DIR}"

POD=testpod




# keycloak properties
export KEYCLOAK_URL="https://keycloak-nm-sso.apps.ocp001.rhlab.ch/auth/realms/basic"
export KEYCLOAK_INTROSPECT_URL="$KEYCLOAK_URL/protocol/openid-connect/token/introspect"
export KEYCLOAK_CLIENT_ID="backend"
export KEYCLOAK_SECRET="16c3384b-725d-410d-8107-df3319165f70"
#export KEYCLOAK_SECRET="b530c9d1-45f0-4f30-87d2-471530534c4a"


create_pod(){
    podman pod create -l $POD --name $POD  --userns=keep-id -p 7080:8080 -p 8080:8080 -p 5432:5432

}

start_database(){
  export POSTGRESQL_USER=keycloak
  export POSTGRESQL_PASSWORD=keycloak
  export POSTGRESQL_DATABASE=root
  export POSTGRESQL_SERVICE_NAME="${POD}"


  echo "start datbase in pod test"
  $(echo "${SCRIPT_DIR}/podman/postgresql-docker-io-image.sh ${POD}")
  #podman stop  postgresql-database

  local CMD="podman run -d --pod "${POD}" --name  postgresql-database \
           -e POSTGRES_USER=${POSTGRESQL_USER} -e POSTGRES_PASSWORD=${POSTGRESQL_PASSWORD} \
           -e POSTGRES_DB=${POSTGRESQL_DATABASE}  ${IMAGE}"
   echo $CMD
   $CMD
}

#podman run -it -p 8080:8080 -v ${SCRIPT_DIR}:/project:Z quay.io/nmajorov/centos-quarkus-maven:21.3 mvn  clean test
#podman --log-level=debug run  -it -p 8080:8080  --userns=keep-id --annotation run.oci.keep_original_groups=1 -v ${SCRIPT_DIR}:/project quay.io/nmajorov/centos-quarkus-maven:21.3 $@

run_test(){

  local CMD="podman --log-level=info run --pod ${POD}  -it --rm   \
              -e POSTGRES_USER=${POSTGRESQL_USER} \
              -e POSTGRES_PASSWORD=${POSTGRESQL_PASSWORD} \
              -e POSTGRES_DB=${POSTGRESQL_DATABASE} \
              -e KEYCLOAK_URL=${KEYCLOAK_URL} \
              -e KEYCLOAK_INTROSPECT_URL=${KEYCLOAK_INTROSPECT_URL} \
              -e KEYCLOAK_CLIENT_ID=$KEYCLOAK_CLIENT_ID \
              -e KEYCLOAK_SECRET=$KEYCLOAK_SECRET \
      --annotation run.oci.keep_original_groups=1 \
       -v ${SCRIPT_DIR}:/project:Z   quay.io/nmajorov/centos-quarkus-maven:21.3 mvn -Dmaven.repo.local=/project/repo cean test"

  echo  $CMD
  $CMD
}


echo "run test with containers"

  if (( $(podman pod ls | grep testpod | wc -l) > 0 ))
  then
    echo "pod  ${POD} already exist"
    echo "list pods"
    podman pod ls
    echo

   else
      create_pod
      start_database
  fi


  echo $(env | grep POSTGRESQL)


# run_test
