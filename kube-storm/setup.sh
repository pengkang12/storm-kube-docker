#!/bin/bash 

kubectl create -f zookeeper.json

sleep 2m
# check zookeeper
echo ruok | nc `kubectl get service | grep zookeeper | awk '{print $3}'` 2181; echo


kubectl create -f zookeeper-service.json

kubectl create -f storm-nimbus.json

sleep 2m

kubectl create -f storm-nimbus-service.json

kubectl create -f ui.json

sleep 30

kubectl create -f ui-service.json

kubectl create -f storm-worker-controller.json

sleep 30

echo stat | nc `kubectl get service | grep zookeeper | awk '{print $3}'` 2181; echo


kubectl create -f storm-worker-service.json

kubectl get pods,services,rc
