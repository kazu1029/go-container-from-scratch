FROM ubuntu:18.04

RUN apt-get -y update \
    && apt-get -y install gcc make wget sudo \
    && wget https://dl.google.com/go/go1.15.6.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz

COPY ./src /go/src

WORKDIR /go/src

ENV PATH=$PATH:/usr/local/go/bin

