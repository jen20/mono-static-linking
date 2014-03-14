#!/bin/sh

pushd bin
mkbundle helloworld.exe --deps -o helloworld
popd
