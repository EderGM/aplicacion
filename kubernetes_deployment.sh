#!/bin/bash

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
sleep 100
kubectl port-forward deployment.apps/devops 8500:8080 &
