FROM ubuntu

WORKDIR /dokidoki

RUN apt-get update && apt-get install -y \
    python2.7 \
    curl \
    zip

RUN curl -OL https://github.com/Shizmob/rpatool/archive/master.zip && \
unzip master.zip

RUN curl -OL https://github.com/CensoredUsername/unrpyc/archive/master.zip && \
unzip master.zip

RUN mv -v rpatool-master rpatool && \
mv -v unrpyc-master unrpyc