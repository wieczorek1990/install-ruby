#!/bin/sh
# OpenSSL installer.

source ./bin/prefix.sh

# openssl
if [ -f openssl-4.0.1.tar.gz ]
then
  echo 'Already downloaded.'
else
  curl --location --output openssl-4.0.1.tar.gz https://github.com/openssl/openssl/archive/refs/tags/openssl-4.0.1.tar.gz
fi

tar xzf openssl-4.0.1.tar.gz
cd openssl-openssl-4.0.1/
./Configure --prefix=$prefix --release
make
sudo make install
