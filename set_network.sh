#!/bin/bash
DEV='ens192'
IPADDR='192.168.10.11/24'
GW='192.168.10.1'
DNS='8.8.8.8'
DOMAIN='test.local'
HOSTNAME='runner-node'

nmcli connection modify $DEV ipv6.method ignore ipv4.method manual ipv4.addresses $IPADDR ipv4.gateway $GW ipv4.dns $DNS ipv4.dns-search $DOMAIN connection.autoconnect yes
nmcli device reapply $DEV

### Set Hostname #######
hostnamectl set-hostname $HOSTNAME
