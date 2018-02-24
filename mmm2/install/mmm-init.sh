#!/bin/sh
#

# ip addr add 172.18.0.201 dev eth0

rm -f /etc/mysql-mmm/*
cp /root/mmm/mmm_*.conf /etc/mysql-mmm/
ln -s /usr/libexec/mysql-mmm /usr/lib/mysql-mmm
chmod 600 /etc/mysql-mmm/*

mmm_agentd
mmm_mond

sleep 10

mmm_control set_online mmm1
mmm_control set_online mmm2
