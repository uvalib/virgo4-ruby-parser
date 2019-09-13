#!/usr/bin/env bash

git submodule init
git submodule update --remote
cd v4-api/query-syntax

javac -sourcepath ./java/generated/:./java/test -cp ./tool/antlr-4.7.2-complete.jar -d ../../lib/java/ -encoding UTF-8  ./java/generated/edu/virginia/virgo/*.java ./java/test/edu/virginia/virgo/*.java

cd ../../ # back to project root

jar cvf ./lib/virgo_parser.jar -C ./lib/java .
