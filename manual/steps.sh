#!/bin/bash
cd $HOME
mkdir -p dockerstore
cd dockerstore/
git clone https://github.com/msreedata/hello-Node.git


cd $HOME/dockerstore/hello-Node
sudo yum -y install docker
pushd ..
ls
read -rsp $'Press any key to continue...\n' -n1 key

systemctl status docker
systemctl start docker
systemctl status docker
systemctl enable docker
systemctl status docker
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker build .
less Dockerfile
sudo docker image ls
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker build . -t hellonode:v1
sudo docker image ls
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker run --rm -d -p 80:8080 --name hello1 hellonode:v1
sudo docker ps -a
#
popd