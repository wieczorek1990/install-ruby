#!/bin/sh
# OpenSSL installer.

source ./bin/prefix.sh

if [ -f $openssl_artifact ]
then
  echo 'Already downloaded.'
else
  curl --location --output $openssl_artifact $openssl_artifact_url
fi

tar xzf $openssl_artifact
dir=$(basename $openssl_artifact .tar.gz)
cd $dir
./Configure --prefix=$prefix --release
make
sudo make install
cd -
