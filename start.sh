#!/bin/bash

# Starting the monero node
monerod --config-file /etc/monero.conf --detach

while : ; do echo "Running..."; sleep 600; done
