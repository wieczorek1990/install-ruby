#!/bin/sh
# Installer for XZ utilities.

source ./bin/prefix.sh

curl --location --output xz-5.8.3.tar.gz https://github.com/tukaani-project/xz/releases/download/v5.8.3/xz-5.8.3.tar.gz
tar xfz xz-5.8.3.tar.gz
cd xz-5.8.3/

./configure --prefix=$prefix
make
sudo make install
