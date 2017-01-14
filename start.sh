#!/bin/bash

# Starting the monero node
monerod --config-file /etc/monero.conf --detach

while : ; do ls -lah /data/monero/lmdb/data.mdb; sleep 600; done
