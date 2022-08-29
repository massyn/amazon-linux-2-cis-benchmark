#!/bin/bash

REF="1.1.1.3"
TITLE="Ensure mounting of udf filesystems is disabled"

touch /etc/modprobe.d/udf.conf
if ! grep -qF 'install udf /bin/true' /etc/modprobe.d/udf.conf; then
    echo "install udf /bin/true" >> /etc/modprobe.d/udf.conf
fi

rmmod udf