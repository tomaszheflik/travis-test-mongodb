#!/usr/bin/env bash
echo "In test bash script"
MONGODB_HOST="$(/sbin/ip route|awk '/default/ { print $3 }')"
echo $MONGODB_HOST
export $MONGODB_HOST