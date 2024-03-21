#!/bin/sh

set -e

set -a
source ../.env
set +a

#########################################
# SETUP POSTGRESQL OPERATOR             #
#########################################

kubectl apply -k postgres-operator/namespace
kubectl apply --server-side -k postgres-operator/default
