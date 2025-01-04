#!/usr/bin/env bash

# Waits for master key to exist
while [ ! -f /shared-files/master_key.pub ]; do
    echo "Waiting for master SSH key..."
    sleep 2
done

# Setup SSH
mkdir -p ~/.ssh
cat /shared-files/master_key.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

/usr/sbin/sshd -D