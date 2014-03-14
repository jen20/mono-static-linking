#!/bin/sh

mkdir bin/
mcs -target:exe -out:bin/helloworld.exe src/Program.cs
