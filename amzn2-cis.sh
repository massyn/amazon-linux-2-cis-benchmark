#!/bin/bash

. /etc/os-release

if [[ $(whoami) != "root" ]] ; then
        echo Please run this as root
        echo sudo $0
        exit 1
fi

if [[ "$PRETTY_NAME" != "Amazon Linux 2" ]] ; then
        echo This is only applicable to Amazon Linux 2
        exit 1
fi

for file in checks/*;
do
   . $file
   echo $REF - $TITLE
done
