FROM ubuntu

WORKDIR /dokidoki

RUN apt-get -y update && \
apt-get -y upgrade && \
apt-get install -y python2.7