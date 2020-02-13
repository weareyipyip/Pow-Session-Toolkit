#!/bin/sh

if [ -z ${1+x} ]
then
    docker-compose up
else
    docker-compose run --rm pow_session_toolkit_$1 docker/cmd.sh
fi
