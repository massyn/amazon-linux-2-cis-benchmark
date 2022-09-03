#!/bin/bash

REF="1.1.2"
TITLE="Ensure /tmp is configured"

if [[ -z $(findmnt -n /tmp) ]]; then
    if [[ -z $(cat /etc/fstab | grep "/tmp") ]]; then
        echo "tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab

    fi
    mount /tmp
fi