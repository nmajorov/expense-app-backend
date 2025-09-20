#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

podman kube play $SCRIPT_DIR/kube.yaml

run_keycloak_imports() {
  echo "wait database to start"
  sleep 1
  for i in $(seq 10);
  do 
  
    if  echo $(podman exec  sso-database pg_isready) | grep -q "no response"
    then
      sleep 1
    else
      break
    fi

  done;

	echo "run keycloak imports"

	podman cp $SCRIPT_DIR/export.sql sso-database:/tmp

	podman exec sso-database bash -c "psql root  < /tmp/export.sql >/dev/null"

}

run_keycloak_imports
