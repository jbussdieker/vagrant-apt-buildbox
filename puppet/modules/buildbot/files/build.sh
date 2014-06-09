#!/bin/bash
rm -rf /build/buildd
mkdir -p /build/buildd
cd /build/buildd
echo "Getting source..."
dget $@ &> /build/dget.log
echo "Extracting source..."
dpkg-source -x *.dsc &> /build/dpkg-source.log
cd *
DEPS=$(dpkg-checkbuilddeps 2>&1 | sed -e 's/dpkg-checkbuilddeps: Unmet build dependencies://g' | sed -e 's/(\(.*\))//g')
echo "Install dependencies..."
apt-get -y install $DEPS &> /build/apt-get.log
echo "Build package(s)..."
dpkg-buildpackage &> /build/dpkg-buildpackage.log
