#!/bin/bash

REF="6.1.2"
TITLE="Ensure permissions on /etc/passwd are configured"

chown root:root /etc/passwd
chmod u-x,g-wx,o-wx /etc/passwd
