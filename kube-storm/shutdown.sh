kubectl delete -f zookeeper.json

kubectl delete -f zookeeper-service.json

kubectl delete -f storm-nimbus.json

kubectl delete -f storm-nimbus-service.json

kubectl delete -f ui.json

kubectl delete -f ui-service.json

kubectl delete -f storm-worker-controller.yaml

kubectl delete -f storm-worker-service.json
