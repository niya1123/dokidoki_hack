FROM ubuntu

WORKDIR /dokidoki

RUN apt-get -y update && \
apt-get -y upgrade && \
apt-get install -y python2.7 && \
apt-get install -y curl && \
apt-get install -y zip && \
mkdir rpatool unrpyc && \
curl -OL https://github.com/Shizmob/rpatool/archive/master.zip && \
unzip master.zip && \
mv rpatool-master/* ./rpatool && \
curl -OL https://github.com/CensoredUsername/unrpyc/archive/master.zip && \
unzip master.zip && \
mv unrpyc-master/* ./unrpyc && \
rm -rf master.zip rpatool-master unrpyc-master