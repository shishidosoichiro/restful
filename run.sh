#!/bin/sh
PWD=`pwd`
PROJECT_NAME=`basename $PWD`
docker rm -f node_dev_$PROJECT_NAME
docker run --rm -it -v `pwd`:/src --name node_dev_$PROJECT_NAME node:dev $@
