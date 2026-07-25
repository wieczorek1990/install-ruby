#!/bin/sh
# Installs Ruby.

source ./bin/prefix.sh

# Download
if [ -f ruby-4.0.6.tar.gz ]
then
  echo "Already downloaded."
else
  curl --output ruby-4.0.6.tar.gz https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.gz
fi

# Install
export LDFLAGS=-L$prefix/lib
export CPPFLAGS=-I$prefix/include
export RUBY_CONFIGURE_OPTS="--with-libyaml-dir=$prefix --with-openssl-dir=$prefix"

tar xfz ruby-4.0.6.tar.gz
cd ruby-4.0.6/
./configure --prefix=$prefix
make
sudo make install
cd -
