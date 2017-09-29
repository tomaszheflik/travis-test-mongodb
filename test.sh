#!/usr/bin/env bash
echo "In test bash script"
export MONGODB_HOST="$(/sbin/ip route|awk '/default/ { print $3 }')"