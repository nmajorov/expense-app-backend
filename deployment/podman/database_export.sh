#!/usr/bin/env bash



echo "run initial expenses data  imports"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

podman exec postgresql-database bash -c "pg_dump -U keycloak root > /tmp/export.sql"