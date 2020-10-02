#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


#add viewer role
# Add the view role to the default service account.
# This enables the service account to view all the resources in the sso-app-demo namespace,
# which is necessary for managing the cluster.
oc policy add-role-to-user view system:serviceaccount:$(oc project -q):default


echo "create secret"

oc create -f $SCRIPT_DIR/sso-app-secret.yaml
oc secrets link default sso-app-secret


oc new-app --name=sso-test --template openshift/sso74-postgresql \
--param DB_USERNAME=keycloak \
--param DB_PASSWORD=keycloak --param APPLICATION_NAME=sso-test \
-p HTTPS_SECRET="sso-app-secret" \
-p HTTPS_KEYSTORE="keystore.jks" \
-p HTTPS_NAME="jboss" \
-p HTTPS_PASSWORD="mykeystorepass" \
-p JGROUPS_ENCRYPT_SECRET="sso-app-secret" \
-p JGROUPS_ENCRYPT_KEYSTORE="jgroups.jceks" \
-p JGROUPS_ENCRYPT_NAME="secret-key" \
-p JGROUPS_ENCRYPT_PASSWORD="mykeystorepass" \
-p SSO_ADMIN_USERNAME="admin" \
-p SSO_ADMIN_PASSWORD="admin" \
-p SSO_REALM="demorealm" \
-p SSO_TRUSTSTORE="truststore.jks" \
-p SSO_TRUSTSTORE_PASSWORD="mykeystorepass" \
-p SSO_TRUSTSTORE_SECRET="sso-app-secret"


# oc delete all --selector=app.kubernetes.io/component=sso-test
# oc delete secrets sso-app-secret
