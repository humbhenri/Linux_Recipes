#!/bin/bash

SOURCES=/etc/apt/sources.list

wget -q -O - http://emacs.naquadah.org/key.gpg | apt-key add -
cp $SOURCES /tmp
cat >> $SOURCES << END
deb http://emacs.naquadah.org/ unstable/
deb-src http://emacs.naquadah.org/ unstable/
END
apt-get update
apt-get install emacs-snapshot
exit 0
