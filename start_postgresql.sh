#!/usr/bin/env zsh
#set -eux
# run POSTGRESQL DATABASE with CONTAINER_TOOL as standalone or in the pod

#create pod first
# for example combination with RedHat sso
#sudo podman pod create -l sso --name sso73 -p 8080:8080 -p 8443:8443

export CONTAINER_TOOL=podman

CONTAINER="docker.io/postgres:13-alpine"

if [[ `uname` == "Darwin" ]]; then
    echo "we on mac use docker"
    export CONTAINER_TOOL=docker
fi

uid=$(id -u)
USER_ID=uid

SCRIPT_DIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

DATA_DIR="$SCRIPT_DIR/pgdatabase"

POSTGRESQL_USER=fuse
POSTGRESQL_PASSWORD=fuse
POSTGRESQL_DATABASE=fuse

#Create database persistence dir
function create_data_dir {

  if [ ! -d "$DATA_DIR" ];then
       echo "create data directory"
       mkdir -p $DATA_DIR
        setfacl -m u:$USER_ID:-wx $DATA_DIR
  fi

    echo "current local  data dir for database storage  $DATA_DIR"

}


# run container with persistence
function run_with_persistence {
  $CONTAINER_TOOL run --rm -d -u $uid \
     --name  postgresql-database \
     --name  postgresql-database \
     -e POSTGRES_USER=$POSTGRESQL_USER -e POSTGRES_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRES_DB=$POSTGRESQL_DATABASE \
      -e PGDATA=/var/lib/postgresql/data/pgdata\
     -v $DATA_DIR:/var/lib/postgresql/data/pgdata:Z \
     -p 127.0.0.1:5432:5432 \
     $CONTAINER
}


function run_without_persistence {
  echo
  echo " run postgres without persistence"
  echo
  $CONTAINER_TOOL run --rm -d \
     --name  postgresql-database \
     -e POSTGRES_USER=$POSTGRESQL_USER -e POSTGRES_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRES_DB=$POSTGRESQL_DATABASE \
     -p 127.0.0.1:5432:5432 \
    $CONTAINER
}

function run_with_pod {
   echo "pod name is to join  is $1"
   if [[ `uname` == "Darwin" ]]; then
    echo "can't run podman directly on mac ... "
    exit 1
   fi

    # run command to join the pod
    $CONTAINER_TOOL run --rm -d -u $uid \
     --pod $1 \
     --name  postgresql-database \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     -v $DATA_DIR:/var/lib/pgsql/data:Z \
     -p 127.0.0.1:5432:5432 \
      $CONTAINER
}



echo "run container as user $uid"

if [  "x$1" = "x" ]
  then
    echo "No POD name as argument run standalone"
    run_without_persistence

    echo "wait database to start"
    sleep 15

    echo "check connection"
    $CONTAINER_TOOL exec  postgresql-database pg_isready
 
 else

   run_with_pod $1

fi
