FROM ubuntu

WORKDIR /dokidoki

RUN apt-get update && apt-get install -y \
    python2.7 \
    curl \
    zip

RUN mkdir rpatool unrpyc

RUN curl -OL https://github.com/Shizmob/rpatool/archive/master.zip && \
unzip master.zip

RUN curl -OL https://github.com/CensoredUsername/unrpyc/archive/master.zip && \
unzip master.zip

RUN ["cp", "-rp", "./rpatool-master/", "./rpatool/"]

RUN ["cp", "-rp", "./unrpyc-master/", "./unrpyc/"]

# RUN rm -rf master.zip unrpyc-master rpatool-master