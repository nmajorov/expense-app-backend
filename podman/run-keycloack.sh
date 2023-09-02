 #!/usr/bin/env bash


#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCRIPT_DIR=`dirname "$0"`
echo "run keycloak server"

IMAGE="quay.io/nmajorov/sso:7.6"

# run stand alone container
function run_standalone() {
    podman run  --rm -d  -p 7080:8080  --security-opt label=disable  --name=keycloak \
    -e DB_USER=$POSTGRESQL_DATABASE -e DB_PASSWORD=$POSTGRESQL_PASSWORD \
    -e DB_ADDR="host.containers.internal:5432" \
    -e DB_DATABASE=root -p 7080:8080 $IMAGE
}


# run in pod
function run_in_pod() {
    podman run --rm  -d --pod "$1" --name="keycloak" \
    -e DB_USER=$POSTGRESQL_USER -e DB_PASSWORD=$POSTGRESQL_PASSWORD \
    -e DB_ADDR="host.containers.internal:5432" \
    -e DB_DATABASE=$POSTGRESQL_DATABASE \
    $IMAGE
}



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
