#!/bin/sh -xe
t=arkadi/cassandra
v=2
docker build -t $t:$v .
docker tag -f $t:$v $t:latest
docker push $t:$v
docker push $t:latest
