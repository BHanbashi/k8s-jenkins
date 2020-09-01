#!/bin/bash
kubectl apply -f jenkins.namespace.yaml -f jenkins.helm.yaml -f ingress.yaml
kubectl create -n jenkins clusterrolebinding jenkins-account --clusterrole=cluster-admin --serviceaccount=jenkins:jenkins
