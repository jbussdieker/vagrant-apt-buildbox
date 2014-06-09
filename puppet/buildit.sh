#!/bin/bash
rm -rf /build/buildd
mkdir -p /build/buildd
cd /build/buildd
dget $@ &> /build/dget.log
dpkg-source -x *.dsc &> /build/dpkg-source.log
cd *
DEPS=$(dpkg-checkbuilddeps 2>&1 | sed -e 's/dpkg-checkbuilddeps: Unmet build dependencies://g' | sed -e 's/(\(.*\))//g')
apt-get -y install $DEPS &> /build/apt-get.log
dpkg-buildpackage &> /build/dpkg-buildpackage.log
