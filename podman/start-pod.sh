#!/usr/bin/env bash

SCRIPT_DIR=`dirname "$0"`

podman kube play kube.yaml

run_keycloak_imports() {
  echo "wait database to start"
  sleep 15
  echo "check connection"
  podman exec  sso-database pg_isready

	echo "run keycloak imports"

	podman cp $SCRIPT_DIR/export.sql sso-database:/tmp

	podman exec sso-database bash -c "psql root  < /tmp/export.sql >/dev/null"

}

run_keycloak_imports
