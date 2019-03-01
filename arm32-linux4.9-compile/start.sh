#!/bin/bash

cat /etc/hosts
cp -rf sshd_config /etc/ssh/sshd_config
service ssh start
echo "root:123456" | chpasswd

