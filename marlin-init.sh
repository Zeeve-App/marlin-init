#!/bin/sh

BIN="./beacon/server"
BIN1="./relay/masterexec 127.0.0.1:8002"
BIN2="./relay/relayexec 127.0.0.1:8002"
ARG1="$1"
ARG2="$2"
ARG3="$3"
CMD=$(ps -elf | grep ./beacon/server | wc -l)
echo $CMD
if [ $CMD -lt 2  -a   "${ARG1}" != "masterNode"  -a   "${ARG1}" != "relayNode" ]
then
 echo "Server is ready"
 ${BIN} 

elif [ "${ARG1}" = "masterNode" ]
then
 echo "MasterNode is ready"
 ${BIN1} 
elif [ "${ARG1}" = "relayNode" ]
then
 echo "relay is ready"
 ${BIN2} 
fi
