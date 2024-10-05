#!/bin/sh

set -e

set -a
source ../.env
set +a

#########################################
# SETUP POSTGRESQL OPERATOR             #
#########################################

# kubectl apply -k postgres-operator/namespace
# kubectl apply --server-side -k postgres-operator/default

#########################################
# SETUP ARGO CD                         #
#########################################

# kubectl create namespace argocd
# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
