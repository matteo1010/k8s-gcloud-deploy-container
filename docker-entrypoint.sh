#!/bin/bash
set -e

echo "enable account"

gcloud auth activate-service-account --key-file=/tmp/certs/svc_account.json

gcloud container clusters get-credentials "${CLUSTER_NAME}" --region "${REGION}" --project "${PROJECT_NAME}"

kubectl apply -f /deployments