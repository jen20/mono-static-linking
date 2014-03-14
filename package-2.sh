#!/bin/sh

pushd bin
mkbundle --static --deps helloworld.exe -o helloworld-static
popd
