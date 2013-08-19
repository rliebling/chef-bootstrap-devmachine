#!/usr/bin/env bash


apt-get -y update

apt-get -y install ruby1.9.3
apt-get -y install build-essential # for chef (need make)
gem install chef --no-ri --no-rdoc
apt-get -y install libxml2 libxml2-dev 
apt-get -y install libxslt1.1 libxslt1-dev # needed for nokogiri, for berkshelf
gem install berkshelf --no-ri --no-rdoc

#apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libffi-dev
#apt-get -y install autoconf curl git-core bzip2 
#apt-get -y autoremove
#apt-get -y clean
#cd /usr/local/src
#wget ftp://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz
#tar -xvzf ruby-2.0.0-p247.tar.gz
#cd ruby-2.0.0-p247
#./configure --prefix=/usr/local
#make && make install
#rm /usr/local/src/ruby-2.0.0-p247.tar.gz
#gem install chef ruby-shadow --no-ri --no-rdoc



