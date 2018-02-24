#!/bin/sh
#

# ip addr add 172.18.0.200 dev eth0

rm -f /etc/mysql-mmm/*
cp /root/mmm/mmm_*.conf /etc/mysql-mmm/
ln -s /usr/libexec/mysql-mmm /usr/lib/mysql-mmm
chmod 600 /etc/mysql-mmm/*

mmm_agentd
