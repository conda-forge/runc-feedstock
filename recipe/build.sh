#! /usr/bin/env bash

make BINDIR="${PREFIX}/bin"
make BINDIR="${PREFIX}/bin" install

go-licenses save \
  . \
  --save_path=./thirdparty-licenses
