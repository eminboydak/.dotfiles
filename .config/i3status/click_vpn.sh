#!/bin/sh

# Actually works for ProtonVPN
# we are connected if the directory exists
if [ -d /proc/sys/net/ipv4/conf/proton0 ]; then
  # we are connected, so propose disconnexion
  echo "Disconnect VPN"
  protonvpn-cli d  
else
  echo "Connect VPN"
  protonvpn-cli c -f -p TCP
fi
