FROM ubuntu:16.04

MAINTAINER Peng Kang<123kangpeng@gmail.edu>

RUN apt-get update -y

RUN apt-get install openjdk-8-jre-headless -y

RUN apt-get install curl tar vim -y

RUN apt-get install python -y

ADD apache-storm /opt/apache-storm
ADD riot-bench-output /tmp/riot-bench-output
ADD configure.sh /
