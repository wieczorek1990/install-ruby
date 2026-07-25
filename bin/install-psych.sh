#!/bin/sh
# Psych gem installer.

source ./bin/prefix.sh

LDFLAGS=-L$prefix/lib CFLAGS=-I$prefix/include \
 sudo gem install psych -- --with-libyaml-dir=$prefix
