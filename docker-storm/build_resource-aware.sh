# Apache Storm images for Docker
#docker image rm -f `docker image ls | grep kevin2333 | awk '{print $3}'`
#docker image rm -f `docker image ls | grep none | awk '{print $3}'`

docker build -t kevin2333/storm-base-ra base-resource-aware
docker build -t kevin2333/storm-nimbus-ra nimbus-resource-aware
docker build -t kevin2333/storm-worker worker
docker build -t kevin2333/storm-ui ui 

base_tag=`docker image ls | grep kevin2333/storm | grep latest | grep base-ra | awk '{print $3}'`
nimbus_tag=`docker image ls | grep kevin2333/storm | grep latest | grep nimbus-ra | awk '{print $3}'`
ui_tag=`docker image ls | grep kevin2333/storm | grep latest | grep ui | awk '{print $3}'`
worker_tag=`docker image ls | grep kevin2333/storm | grep latest | grep worker | awk '{print $3}'`

echo $base_tag, $nimbus_tag, $ui_tag, $worker_tag

docker tag $base_tag kevin2333/storm-base-ra:latest
docker tag $nimbus_tag kevin2333/storm-nimbus-ra:latest
docker tag $ui_tag kevin2333/storm-ui:latest
docker tag $worker_tag kevin2333/storm-worker:latest

docker push kevin2333/storm-base-ra:latest
docker push kevin2333/storm-nimbus-ra:latest
docker push kevin2333/storm-ui:latest
docker push kevin2333/storm-worker:latest
