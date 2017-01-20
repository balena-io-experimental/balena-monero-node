#!/bin/bash

# Starting the monero node
monerod --config-file /etc/monero.conf --detach

sleep 1

MONERO_DATA=/data/monero/lmdb/data.mdb
while : ;
do
  if [ -f ${MONERO_DATA} ];
  then
    echo "Listing monero database: "
    ls -lah ${MONERO_DATA}
  else
    echo "Monero database does not exists (yet)?"
  fi

  echo "Listing `monerod` process"
  ps -C monerod

  echo "Sleeping for 10 mins"
  sleep 600
done
