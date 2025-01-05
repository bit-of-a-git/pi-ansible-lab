#!/usr/bin/env bash

# Generate SSH key
ssh-keygen -t rsa -b 4096 -f /root/.ssh/id_rsa -N  ""

# Copy public key to shared-files, where it can be accessed by other containers
mkdir /shared-files
cp /root/.ssh/id_rsa.pub /shared-files/control_node_key.pub

# Keep container running
exec "$@"