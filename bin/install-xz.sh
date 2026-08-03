#!/bin/sh
# Installer for XZ utilities.

source ./bin/prefix.sh

if [ -f $xz_artifact ]
then
  echo "Already downloaded."
else
  curl --location --output $xz_artifact $xz_artifact_url
fi

tar xfz $xz_artifact
dir=$(basename $xz_artifact .tar.gz)
cd $dir
./configure --prefix=$prefix
make
sudo make install
cd -
