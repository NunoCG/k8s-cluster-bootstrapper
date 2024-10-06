#!/bin/bash

set -e

set -a
source ../.env
set +a

#########################################
# SETUP ARGO CD                         #
#########################################

printf -- 'Installing ArgoCD \n'
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml >/dev/null

printf -- 'Exposing ArgoCD Server \n'
kubectl apply -f ./argocd/ingress-argocd.yaml >/dev/null
