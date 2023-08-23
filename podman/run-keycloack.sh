 #!/usr/bin/env bash


#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCRIPT_DIR=`dirname "$0"`
echo "run keycloak server"

# IMAGE="docker.io/jboss/keycloak:11.0.2"
IMAGE="quay.io/bward/sso76-openshift-rhel8-btw:latest"

if [ -z "$1" ]
  then
    echo "No POD name as argument run standalone"
    podman run --rm  -p 7080:8080  --security-opt label=disable  -e KEYCLOAK_USER=admin \
    -e SSO_ADMIN_USERNAME=admin \
    -e SSO_ADMIN_PASSWORD=admin \
    -e KEYCLOAK_PASSWORD=admin \
    \
    $IMAGE
 else
    echo "pod name is to join  is $1"
    if [ "x$POSTGRESQL_USER" = "x" ];then
              POSTGRESQL_USER="keycloak"
    fi

    if [ "x$POSTGRESQL_PASSWORD" = "x" ]; then
              POSTGRESQL_PASSWORD="keycloak"
    fi

    if [ "x$POSTGRESQL_DATABASE" = "x" ]; then
              POSTGRESQL_DATABASE="root"
    fi

    # run command to join the pod with  database
    POD="$1"
    podman run -dt --pod $POD --security-opt label=disable \
     -e KEYCLOAK_USER=admin \
     -e KEYCLOAK_PASSWORD=admin \
     -e SSO_ADMIN_USERNAME=admin \
     -e SSO_ADMIN_PASSWORD=admin \\
     -e DB_PORT="5432" \
     -e DB_VENDOR="postgres" \
     -e DB_USER=$POSTGRESQL_USER \
     -e DB_PASSWORD=$POSTGRESQL_USER \
     -e DB_ADDR=$POD \
     -e DB_DATABASE=$POSTGRESQL_DATABASE \
    $IMAGE
fi

#-e KEYCLOAK_IMPORT=/tmp/geektour-realm.json  -v ./keycloak-conf/geektour-realm.json:/tmp/geektour-realm.json \

#    sudo podman run -dt --pod $POD  -e SSO_ADMIN_USERNAME=admin \
#    -e SSO_ADMIN_PASSWORD=admin \
#    -e SCRIPT_DEBUG=true \
#    -e X509_CA_BUNDLE="/var/run/secrets/kubernetes.io/serviceaccount/service-ca.crt" \
#  -e DB_SERVICE_PREFIX_MAPPING="$POD-postgresql=DB" \
#  -e DB_USERNAME="sso" \
#  -e DB_PASSWORD="sso" \
#  -e SSO73_POSTGRESQL_SERVICE_HOST=$POD \
#  -e DB_DATABASE="db" \
#  -e SSO73_POSTGRESQL_SERVICE_PORT=5432 \
#  -e DB_JNDI="java:jboss/datasources/KeycloakDS" \
# registry.access.redhat.com/redhat-sso-7/sso73-openshift
