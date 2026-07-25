#!/bin/sh
# Psych gem installer.

source ./bin/prefix.sh

# Psych
LDFLAGS=$prefix/lib CFLAGS=$prefix/include\
 sudo gem install psych -- --with-libyaml-dir=$prefix
