#!/bin/bash

nodes=$(srun hostname | sort)

IFS=' '

read -a names <<< "$nodes"

if [ $SLURMD_NODENAME == ${names[0]} ]; then
    UCX_LOG_LEVEL=info UCX_TLS=tcp  ./ucp_ping_pong
else
    sleep 1
    UCX_LOG_LEVEL=info UCX_TLS=tcp  ./ucp_ping_pong -n ${names[0]}
fi
