#!/bin/bash
./beacon/server &
if [ "$1" = "masterNode" ]
then
./relay/masterexec "$2:$3" &
echo "masterNode is ready"
elif [ "$1" = "relayNode" ]
then
./relay/relayexec "$2:$3" &
echo "relayNode is ready"
fi
