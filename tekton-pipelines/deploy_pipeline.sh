#!/usr/bin/env bash

echo "delete existing pipelines and tasks first "

#CUR_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

oc delete pipelineresources.tekton.dev backend-image --ignore-not-found=true

oc delete tasks s2i-quarkus-maven deploy-test-containers backend-mvn  clean-up-backend --ignore-not-found

oc delete pipelines.tekton.dev build-and-deploy-backend --ignore-not-found=true


echo "deploy resources"
oc create -f resources/

echo "deploy tasks"
oc create -f tasks/

echo "deploy pipeline"
oc create -f pipeline.yaml

