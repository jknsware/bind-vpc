#!/bin/bash

# install man pages
sudo yum -y install man man-pages

# install ntp
sudo yum -y install ntp

# install tmux
sudo yum -y install tmux

# install zip
sudo yum -y install zip unzip

# install docker
sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

sudo yum -y install docker-engine
sudo usermod -aG docker vagrant
sudo service docker start
sudo chkconfig docker on

# install AWS
mkdir /opt/download
curl https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -o /opt/download/awscli-bundle.zip
unzip /opt/download/awscli-bundle.zip -d /opt/download
/opt/download/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# mount secondary disk
sudo mkdir /data

sudo parted /dev/sdb mklabel msdos
sudo parted /dev/sdb mkpart primary 512 100%
sudo mkfs -t ext4 /dev/sdb1

echo '/dev/sdb1 /data ext4 defaults,auto,noatime,noexec 0 0' | sudo tee -a /etc/fstab

sudo mount /dev/sdb1 /data
