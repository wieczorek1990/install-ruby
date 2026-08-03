#!/bin/sh
# Installs Ruby.

source ./bin/prefix.sh

# Download
if [ -f $ruby_artifact ]
then
  echo "Already downloaded."
else
  curl --output $ruby_artifact $ruby_artifact_url
fi

# Install
export LDFLAGS=-L$prefix/lib
export CPPFLAGS=-I$prefix/include
export RUBY_CONFIGURE_OPTS="--with-libyaml-dir=$prefix --with-openssl-dir=$prefix"

tar xfz $ruby_artifact
dir=$(basename $ruby_artifact .tar.gz)
cd $dir
./configure --prefix=$prefix
make
sudo make install
cd -
