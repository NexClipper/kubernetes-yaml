#! /bin/bash

# delete ex) ./billing.sh delete
# apply ex) ./billing.sh apply

kubectl $1 -f db/service.yaml
kubectl $1 -f db/deployment.yaml 

kubectl $1 -f kb/service.yaml 
kubectl $1 -f kb/deployment.yaml 

kubectl $1 -f kaui/service.yaml 
kubectl $1 -f kaui/deployment.yaml 

kubectl $1 -f meter/service.yaml
kubectl $1 -f meter/deployment.yaml
