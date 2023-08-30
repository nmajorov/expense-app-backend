 #!/usr/bin/env bash


#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCRIPT_DIR=`dirname "$0"`
echo "run keycloak server"

 # IMAGE="docker.io/nmajorov/sso-openshift:7.6"
IMAGE="quay.io/bward/sso76-openshift-rhel8-btw:latest"


# run stand alone container
function run_standalone() {
    podman run  --rm -p 7080:8080  --security-opt label=disable  --name=keycloak \
    -e SSO_ADMIN_USERNAME=admin \
    -e SSO_ADMIN_PASSWORD=admin \
    -e KEYCLOAK_POSTGRESQL_SERVICE_HOST="localhost"
    -e KEYCLOAK_POSTGRESQL_SERVICE_PORT="5432" \
    -e DB_USERNAME=$POSTGRESQL_USER \
    -e DB_PASSWORD=$POSTGRESQL_USER \
    -e DB_DATABASE=$POSTGRESQL_DATABASE \
    -e DB_SERVICE_PREFIX_MAPPING="keycloak-postgresql=DB" \
    -e TX_DATABASE_PREFIX_MAPPING="keycloak-postgresql=DB" \
    -e DB_JNDI="java:jboss/datasources/KeycloakDS" \
    $IMAGE
}


# run in pod
function run_in_pod() {
    podman run --rm  -d --pod "$1"  --name keycloak \
    -e SSO_ADMIN_USERNAME=admin \
    -e SSO_ADMIN_PASSWORD=admin \
    -e KEYCLOAK_POSTGRESQL_SERVICE_HOST="host.containers.internal" \
    -e KEYCLOAK_POSTGRESQL_SERVICE_PORT="5432" \
    -e DB_USERNAME=$POSTGRESQL_USER \
    -e DB_PASSWORD=$POSTGRESQL_USER \
    -e DB_DATABASE=$POSTGRESQL_DATABASE \
    -e DB_SERVICE_PREFIX_MAPPING="keycloak-postgresql=DB" \
    -e TX_DATABASE_PREFIX_MAPPING="keycloak-postgresql=DB" \
    -e DB_JNDI="java:jboss/datasources/KeycloakDS" \
    $IMAGE
}

  # -e CLI_SCRIPT_FILE="/opt/eap/change-database-to-postgresql.cli" \

 #-e DB_JNDI="java:jboss/datasources/KeycloakPGDS" \


###############################################
#               main script flow              #
###############################################
if [ "x$POSTGRESQL_USER" = "x" ];then
            POSTGRESQL_USER="keycloak"
fi

if [ "x$POSTGRESQL_PASSWORD" = "x" ]; then
          POSTGRESQL_PASSWORD="keycloak"
fi

if [ "x$POSTGRESQL_DATABASE" = "x" ]; then
          POSTGRESQL_DATABASE="root"
fi

if [ -z "$1" ]
  then
    echo "No POD name as argument run standalone"
    run_standalone
 else
    echo "pod name is to join  is $1"
    run_in_pod
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
