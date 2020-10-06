#!/usr/bin/env bash

# run POSTGRESQL DATABASE with podman as standalone or in the pod

#create pod first
# for example combination with RedHat sso
#sudo podman pod create -l sso --name sso73 -p 8080:8080 -p 8443:8443

#POD=sso
uid=$(id -u)
USER_ID=uid

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


if [ "x$POSTGRESQL_USER" = "x" ];then
  POSTGRESQL_USER="keycloack"
fi


if [ "x$POSTGRESQL_PASSWORD" = "x" ]; then
  POSTGRESQL_PASSWORD="keycloack"
fi


if [ "x$POSTGRESQL_DATABASE" = "x" ]; then
  POSTGRESQL_DATABASE="root"
fi




## get UID
uid=$(id -u)

echo "run container as user $uid"

if [ -z "$1" ]
  then
    echo "No POD name as argument run standalone"
    podman run --rm -d -u $uid  --name  postgresql-database \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     -p 127.0.0.1:5432:5432 \
     centos/postgresql-96-centos7

 else
    echo "joining pod: $1"
    # run command to join the pod
    podman run --rm -d -u $uid \
     --pod $1 \
     --name  postgresql-database \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     centos/postgresql-96-centos7
fi

echo "wait database to start"
sleep 15
echo "check connection"
podman exec  postgresql-database pg_isready



podman cp $SCRIPT_DIR/export.sql postgresql-database:/tmp

echo "run sql import"
podman exec postgresql-database bash -c "psql root  < /tmp/export.sql"
