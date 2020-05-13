# Apache Storm images for Docker

Apache storm 2.1.0
Linux version: ubuntu 16.04
Python 2.7
Java 1.8

# Build
```
docker build -t kevin2333/storm-base base
docker build -t kevin2333/storm-nimbus nimbus
docker build -t kevin2333/storm-worker worker
docker build -t kevin2333/storm-ui ui 

```

# upload docker image
```
docker login
docker image ls

docker tag 129385e5b910 kevin2333/storm-base:latest
docker tag 129385e5b910 kevin2333/storm-nimbus:latest
docker tag 129385e5b910 kevin2333/storm-ui:latest
docker tag 129385e5b910 kevin2333/storm-worker:latest

sudo docker push kevin2333/storm-base:latest
sudo docker push kevin2333/storm-nimbus:latest
sudo docker push kevin2333/storm-ui:latest
sudo docker push kevin2333/storm-worker:latest

```
