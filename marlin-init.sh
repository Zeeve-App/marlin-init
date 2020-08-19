#!/bin/bash
./beacon/server &
if [ $1 == "masterNode" ]
then
./relay/masterexec "127.0.0.1:8002" &
echo "masterNode is ready"
elif [ $1 == "relayNode" ]
then
./relay/relayexec "127.0.0.1:8002" &
echo "relayNode is ready"
fi
