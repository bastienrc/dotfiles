#!/bin/bash
rm hosts.txt
wget http://winhelp2002.mvps.org/hosts.txt
diff -Naur hosts.txt /etc/hosts | less
mv hosts.txt /etc/HOSTS
cat /etc/hosts-head > /etc/hosts
cat /etc/HOSTS >> /etc/hosts
