#!/bin/sh

/usr/jexus/jws stop >/dev/null 2>&1
cd /tmp

rm -rf jexus-6.* >/dev/null 2>&1
rm -rf jexus >/dev/null 2>&1
wget --no-check-certificate https://linuxdot.net/down/jexus-6.4.x-x64.tar.gz
tar -zxvf jexus-6.4.x-x64.tar.gz
mv -f jexus /usr/
cd /usr/jexus
chmod +x /usr/jexus/jws
/usr/jexus/jws regsvr
rm -rf /tmp/jexus >/dev/null 2>&1
rm -rf /tmp/jexus-6.* >/dev/null 2>&1

cd /usr/jexus
echo 'OK, Jexus has been installed in /usr/jexus.'
