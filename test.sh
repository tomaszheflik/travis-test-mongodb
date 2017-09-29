#!/usr/bin/env bash
echo "In test bash script"
MONGODB_HOST="$(/sbin/ip route|awk '/default/ { print $3 }')"
echo "Using IP:" ${MONGODB_HOST}
export MONGODB_HOST=$MONGODB_HOST
