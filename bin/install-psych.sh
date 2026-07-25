#!/bin/sh
# Psych gem installer.

source ./bin/prefix.sh

LDFLAGS=$prefix/lib CFLAGS=$prefix/include\
 sudo gem install psych -- --with-libyaml-dir=$prefix
