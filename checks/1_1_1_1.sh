#!/bin/bash

REF="1.1.1.1"
TITLE="Ensure mounting of cramfs filesystems is disabled"

touch /etc/modprobe.d/cramfs.conf
if ! grep -qF 'install cramfs /bin/true' /etc/modprobe.d/cramfs.conf; then
    echo "install cramfs /bin/true" >> /etc/modprobe.d/cramfs.conf
fi

rmmod cramfs