#!/bin/bash
if [ ! -f /var/tmp/puppetlabs-release-precise.deb ]; then
  wget -nv https://apt.puppetlabs.com/puppetlabs-release-precise.deb -O /var/tmp/puppetlabs-release-precise.deb
  sudo dpkg -i /var/tmp/puppetlabs-release-precise.deb
  sudo apt-get update
  sudo apt-get -y install puppet
fi
