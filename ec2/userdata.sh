#!/bin/bash
apt-get update -y

apt-get install docker.io -y

systemctl start docker

systemctl enable docker

docker run -d -p 80:80 nginx

echo ${name} > /var/log/message