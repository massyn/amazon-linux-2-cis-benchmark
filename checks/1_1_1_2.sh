#!/bin/bash

REF="1.1.1.2"
TITLE="Ensure mounting of squashfs filesystems is disabled"

touch /etc/modprobe.d/squashfs.conf
if ! grep -qF 'install squashfs /bin/true' /etc/modprobe.d/squashfs.conf; then
    echo "install squashfs /bin/true" >> /etc/modprobe.d/squashfs.conf
fi

if [[ ! -z $(lsmod | grep -n squashfs) ]]; then
    rmmod squashfs
fi