#!/bin/sh
# YAML instaler.

source ./bin/prefix.sh

if [ -f $yaml_artifact ]
then
  echo "Already downloaded."
else
  curl --location --output $yaml_artifact $yaml_artifact_url
fi

tar xfz $yaml_artifact
dir=$(basename $yaml_artifact .tar.gz)
cd $dir
./configure --prefix=$prefix
make
sudo make install
cd -
