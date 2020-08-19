#!/bin/sh

BIN="./beacon/server"
ARG1="$1"
ARG2="$2"
ARG3="$3"

[ -z "${ARG1}" ] && { echo "[-] Mention Node Name" ; exit 1 ; } 
[ "${ARG1}" = "masterNode" ] && { echo "[+] masterNode is ready." ; }
[ "${ARG1}" = "relayNode" ] && { echo "[+] relayNode is ready." ; }

$BIN $ARG1 $ARG2 $ARG3
