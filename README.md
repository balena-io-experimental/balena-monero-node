# resin-monero-node

Running a [Monero](https://getmonero.org/) cryptocurrency node on a resin.io
device. This project has been tested with [Raspberry Pi 3](https://www.raspberrypi.org/),
but should be easy to adapt to other devices as well.

It's _work in progress_, and intended mostly for experimentation.

### Notes

* the boost libraries available for Raspberry Pi from the stock sources is too old, thus the need to recompile from scratch. This makes the project deployment quite slow (`git push resin master` can take up to 1.5h in some cases, though often much quicker). If using another device, might be able to use stock boost libraries and would speed things up. See the [Monero Readme](https://github.com/monero-project/monero/blob/master/README.md) for the required libraries.
* the database is kept on the persistent `/data` partition, which survices application restart. If you'd like to clear that space, can do it from the resin.io dashboard (Purge Data option), or the API
* the code is only running a monero node, and displays some diagnostics data in the resin.io dashboard.
* you can interact with the node over rpc, the node listens on the default port over all interfaces, and connect to it over the local network: `monero-wallet-cli --daemon-host <node IP address>`, where `<node IP address>` can be seen in the dashboard. Can install the client on your own computer from the [Monero download page](https://getmonero.org/downloads/).

### Future work

Things that would be nice to add:

* the node should set up mDNS and be accessible over a `.local` name
* set up options to use the testnet instead of the main net
* set up ways to expose the node over the Public Device URL

Pull requests are appreciated. :)

### License

Copyright 2017 Resinio Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
