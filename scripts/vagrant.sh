#!/bin/bash

# Set up sudo
echo %$SUDO_USER ALL=NOPASSWD:ALL > /etc/sudoers.d/$SUDO_USER
chmod 0440 /etc/sudoers.d/$SUDO_USER

# Set up sudo to allow no-password sudo for "sudo"
usermod -a -G sudo $SUDO_USER

# Installing vagrant keys
mkdir /home/$SUDO_USER/.ssh
chmod 700 /home/$SUDO_USER/.ssh
cd /home/$SUDO_USER/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 /home/$SUDO_USER/.ssh/authorized_keys
chown -R $SUDO_USER /home/$SUDO_USER/.ssh

# Install NFS for Vagrant
aptitude update
aptitude -y install --without-recommends nfs-common
