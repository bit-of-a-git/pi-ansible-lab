#!/usr/bin/env bash

# Waits for master key to exist
while [ ! -f /shared-files/control_node_key.pub ]; do
    echo "Waiting for control node SSH key..."
    sleep 2
done

# Add control node key to authorized_keys
mkdir -p ~/.ssh
cat /shared-files/control_node_key.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

/usr/sbin/sshd -D