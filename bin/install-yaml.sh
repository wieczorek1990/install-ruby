#!/bin/sh
# YAML instaler.

source ./bin/prefix.sh

if [ -f yaml-0.2.5.tar.gz ]
then
  echo "Already downloaded."
else
  curl --location --output yaml-0.2.5.tar.gz https://pyyaml.org/download/libyaml/yaml-0.2.5.tar.gz
fi

tar xfz yaml-0.2.5.tar.gz
cd yaml-0.2.5/
./configure --prefix=$prefix
make
sudo make install
cd -
