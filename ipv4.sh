cat /proc/sys/net/ipv4/ip_forward

ifconfig eth0 mtu 1410
ifconfig eth0 promisc
ifconfig lo mtu 1410

iptables -t nat -A POSTROUTING -s 10.0.4.0/22  -o eth0  -j MASQUERADE

#ifconfig ppp0 promisc
#ifconfig ppp1 promisc
for each in /proc/sys/net/ipv4/conf/*
do
    echo 0 > $each/accept_redirects
    echo 0 > $each/send_redirects
done
