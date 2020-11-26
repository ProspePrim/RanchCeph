#!/bin/bash

# add named from all nodes + localhost
echo "ip-address node-1" >> /etc/hosts && echo "ip-address node-2" >> /etc/hosts && echo "ip-address node-3" >> /etc/hosts

# add pass for root - all nodes
passwd root

# ssh keygen from node-1
ssh-keygen

# ssh copy no all nodes from node-1
ssh-copy-id root@node-1 && ssh-copy-id root@node-2 && ssh-copy-id root@node-3
