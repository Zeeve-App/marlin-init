#!/bin/sh

BIN="./beacon/server"
BIN1="./relay/masterexec 127.0.0.1:8002"
BIN2="./relay/relayexec 127.0.0.1:8002"
ARG1="$1"
ARG2="$2"
ARG3="$3"
CMD="ps -elf | grep ./beacon/server | wc -l"

if [ ${CMD} < 2 ]
then
 ${BIN} 
 echo "Server is ready"

if [ ${ARG1} == "masterNode" ]
then
 ${BIN1} 
 echo "MasterNode is ready"
elif [ ${ARG1} == "relayNode" ]
then
 ${BIN2} 
 echo "relay is ready"
