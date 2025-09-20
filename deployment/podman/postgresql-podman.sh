#!/usr/bin/env bash

# run POSTGRESQL DATABASE with podman as standalone or in the pod

#create pod first
# for example combination with RedHat sso
#sudo podman pod create -l sso --name sso73 -p 8080:8080 -p 8443:8443

#IMAGE="registry.centos.org/centos/postgresql-96-centos7"
IMAGE="quay.io/centos7/postgresql-10-centos7:latest"
#IMAGE="registry.redhat.io/rhel8/postgresql-10"
#IMAGE="registry.redhat.io/rhscl/postgresql-10-rhel7"

#POD=sso
uid=$(id -u)
USER_ID=uid

#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCRIPT_DIR=`dirname "$0"`

if [ "x$POSTGRESQL_USER" = "x" ];then
  POSTGRESQL_USER="keycloak"
fi


if [ "x$POSTGRESQL_PASSWORD" = "x" ]; then
  POSTGRESQL_PASSWORD="keycloak"
fi


if [ "x$POSTGRESQL_DATABASE" = "x" ]; then
  POSTGRESQL_DATABASE="root"
fi

CONTAINER_NAME="database"


## get UID
uid=$(id -u)

echo "run container as user $uid"
echo "using docker image: $IMAGE"
if [ -z "$1" ]
  then
    echo "No POD name as argument run standalone"
    podman run --rm -d -u $uid  --name  $CONTAINER_NAME \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     -p 5432:5432 \
     $IMAGE

 else
    echo "joining pod: $1"
    # run command to join the pod
    CMD="podman run  --rm -d -u $uid --pod "$1" --name  $CONTAINER_NAME \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     $IMAGE"
    echo $CMD
    $CMD


fi


run_keycloak_imports() {
  echo "wait database to start"
  sleep 1
  for i in $(seq 10);
  do 
  
    if  echo $(podman exec $CONTAINER_NAME  pg_isready) | grep -q "no response"
    then
      sleep 1
    else
      break
    fi

  done;

	echo "run keycloak imports"

	podman cp $SCRIPT_DIR/export.sql $CONTAINER_NAME:/tmp

	podman exec sso-database bash -c "psql root  < /tmp/export.sql >/dev/null"

}


run_keycloak_imports() {
	
	echo "run keycloak imports"

	podman cp $SCRIPT_DIR/export.sql $CONTAINER_NAME:/tmp

	podman exec $CONTAINER_NAME bash -c "psql root  < /tmp/export.sql >/dev/null"

}



echo "wait $CONTAINER_NAME to start"
sleep 15
echo "check connection"
podman exec  $CONTAINER_NAME pg_isready

run_keycloak_imports
