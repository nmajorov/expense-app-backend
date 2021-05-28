#!/usr/bin/env bash



echo "run initial expenses data  imports"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
podman cp $SCRIPT_DIR/fuse_export.sql postgresql-database:/tmp/export.sql
podman exec postgresql-database bash -c "psql root  < /tmp/export.sql"
