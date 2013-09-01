#!/bin/bash

# Remove existing VirtualBox guest additions
if test -f /etc/init.d/virtualbox-ose-guest-utils; then
    /etc/init.d/virtualbox-ose-guest-utils stop
    rmmod vboxguest
    aptitude -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
fi

# Install dependencies
aptitude -y install --without-recommends linux-headers-amd64 dkms bzip2

# Install the VirtualBox guest additions
VBOX_ISO=VBoxGuestAdditions.iso
mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# Cleanup
rm $VBOX_ISO
