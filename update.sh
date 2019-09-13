#!/usr/bin/env bash

git submodule init
git submodule update --remote
cd v4-api/query-syntax

java -cp "./tool/antlr-4.7.2-complete.jar" org.antlr.v4.Tool -visitor -no-listener -o java/generated/edu/virginia/virgo  -package edu.virginia.virgo VirgoQueryLexer.g4 VirgoQuery.g4

javac -sourcepath ./java/generated/:./java/test -cp ./tool/antlr-4.7.2-complete.jar -d ../../lib/java/ -encoding UTF-8  ./java/generated/edu/virginia/virgo/*.java ./java/test/edu/virginia/virgo/*.java

cd ../../ # back to project root

jar cvf ./lib/virgo_parser.jar -C ./lib/java .
