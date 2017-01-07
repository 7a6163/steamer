FROM golang:alpine
RUN apk add --no-cache bash git
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

ENV app /steamer
WORKDIR ${app}
ADD . ${app}
RUN /bin/bash -c 'go get gopkg.in/mgo.v2 && \
    go get github.com/gorilla/mux && \
    go get github.com/fatih/structs'
