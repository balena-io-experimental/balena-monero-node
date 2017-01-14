#!/bin/bash

# Starting the monero node
monerod
  --config-file /etc/monero.conf \
  --detach

tail -f /root/.bitmonero/monero.log
