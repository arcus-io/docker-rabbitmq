#!/bin/bash

cat << EOF > /etc/hosts
127.0.0.1   localhost $HOSTNAME

::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
EOF

rm -rf /var/lib/mnesia/*
rabbitmq-server start
