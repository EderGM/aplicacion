#!/bin/bash

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
sleep 100
nohup kubectl port-forward deployment.apps/devops 9000:8080 &
