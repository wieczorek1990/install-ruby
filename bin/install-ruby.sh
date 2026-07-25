#!/bin/sh

source ./bin/prefix.sh

# Download
# https://www.ruby-lang.org/en/downloads/
if [ -f ruby-4.0.6.tar.gz ]
then
  echo "Already downloaded."
else
  curl --output ruby-4.0.6.tar.gz https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.gz
fi
tar xfz ruby-4.0.6.tar.gz
cd ruby-4.0.6/

# Install
export LDFLAGS=-L/opt/lib
export CPPFLAGS=-I/opt/include
export RUBY_CONFIGURE_OPTS="--with-libyaml-dir=/opt --with-openssl-dir=/opt"

make clean
./configure --prefix=/opt
make
sudo make install
