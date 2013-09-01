#!/bin/bash

# Set up sudo
echo %loic ALL=NOPASSWD:ALL > /etc/sudoers.d/loic
chmod 0440 /etc/sudoers.d/loic

# Set up sudo to allow no-password sudo for "sudo"
usermod -a -G sudo loic

# Installing vagrant keys
mkdir /home/loic/.ssh
chmod 700 /home/loic/.ssh
cd /home/loic/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 /home/loic/.ssh/authorized_keys
chown -R loic /home/loic/.ssh

# Install NFS for Vagrant
aptitude update
aptitude -y install --without-recommends nfs-common
