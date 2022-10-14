#!/bin/sh
 [ ! $1 ] && echo "a is null,please use ./add_e.sh ip..." && exit

echo "route will add $1,please check with  ip route "
#route add -net 117.133.49.0 netmask 255.255.255.0 dev eth0
#route add -net 212.129.249.0 netmask 255.255.255.0 dev eth0
route add -net  $1 netmask 255.255.255.0 dev eth0
