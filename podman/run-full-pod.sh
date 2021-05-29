#!/usr/bin/env bash

echo "run podman pod with postgresql  and keycloak"
 
# set database user name and password
if [ "x$POSTGRESQL_USER" = "x" ];then
 export POSTGRESQL_USER="keycloak"
fi


if [ "x$POSTGRESQL_PASSWORD" = "x" ]; then
  export POSTGRESQL_PASSWORD="keycloak"
fi


if [ "x$POSTGRESQL_DATABASE" = "x" ]; then
  export POSTGRESQL_DATABASE="root"
fi




POD=sso                    
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DIR=`dirname "$0"`                                               
echo "create pod"                        
podman pod create -l $POD --name $POD -p 7080:8080 -p 8443:8443 -p 5432:5432

echo "add database to pod"
$DIR/postgresql-podman.sh $POD

echo "add database to pod"
$DIR/run-keycloack.sh $POD

echo "list pods"
podman pod ls


