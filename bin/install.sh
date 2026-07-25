#!/bin/sh
# Combined Ruby language installer.

source ./bin/prefix.sh

./bin/install-xz.sh
./bin/install-yaml.sh
./bin/install-psych.sh
./bin/install-openssl.sh
./bin/install-ruby.sh
