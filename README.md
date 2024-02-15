# Apache Storm images for Docker
Apache storm 2.1.0
Linux version: ubuntu 16.04
Python 2.7
Java 1.8

[docker-storm](https://github.com/mattf/docker-storm) for building docker image. 
docker-storm refer to https://github.com/mattf/docker-storm. Thanks. 

[kube-storm](https://github.com/kubernetes/examples/tree/master/staging/storm) for running storm in kubernetes.

### Trouble shooting
if nimbus can't start. Try to delete zookeeper storm data. restart zookeeper again. 

