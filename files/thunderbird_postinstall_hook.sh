#!/bin/sh
#This script won't be usefull if hopefully one day this is included in TB native package.
for i in `ls -d /usr/lib/thunderbird-* | grep -v thunderbird-addons`;
  do [ ! -e $i/thunderbird.cfg ] && ln -s /etc/thunderbird/thunderbird.cfg $i/thunderbird.cfg;
done;
exit 0

