# Vagrant APT build box

## Usage

    $ vagrant up precise
    $ vagrant ssh precise
    ...
    $ sudo /vagrant/buildbot/buildit.sh http://archive.ubuntu.com/ubuntu/pool/universe/n/nginx/nginx_1.1.19-1ubuntu0.5.dsc
    $ ls /build/*
