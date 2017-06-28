#!/bin/bash
# init.centos.sh

#停止firewall
systemctl stop firewalld.service
#禁止firewall开机启动
systemctl disable firewalld.service

# 安装基础软件
yum -y install gcc gcc-c++ autoconf automake make zlib zlib-devel openssl openssl-devel pcre pcre-devel ack screen wget curl zip unzip ntpdate net-snmp net-snmp-devel net-snmp-utils vim git git-common nc htop iotop iftop telnet iptables-services

# 安装docker
curl -L http://7pun5o.com1.z0.glb.clouddn.com/files/docker-compose > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version