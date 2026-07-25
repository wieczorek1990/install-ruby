#!/bin/sh
# YAML instaler.

source ./bin/prefix.sh

curl --location --output yaml-0.2.5.tar.gz http://pyyaml.org/download/libyaml/yaml-0.2.5.tar.gz
tar xfz yaml-0.2.5.tar.gz
cd yaml-0.2.5/

./configure --prefix=$prefix
make
sudo make install
