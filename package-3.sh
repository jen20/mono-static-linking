#!/bin/sh

pushd bin

mkbundle --static --deps -c -o main.c -oo helloworld.a helloworld.exe

cc -o helloworld-static2 -Wall `pkg-config --cflags monosgen-2` `pkg-config --libs-only-L monosgen-2` -Wl,-static -lmonosgen-2.0 -Wl,-dynamic `pkg-config --libs-only-l monosgen-2 | sed -e "s/\-lmono-2.0 //"` main.c helloworld.a

popd
