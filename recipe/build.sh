#! /usr/bin/env bash
set -ex

# build complains if this file exists already
rm -f $GOPATH/go.mod
make BINDIR="${PREFIX}/bin"
make BINDIR="${PREFIX}/bin" install

go-licenses save \
  . \
  --save_path=./thirdparty-licenses
