# Virgo 4 Ruby Parser

This project contains the parser for Virgo 4 Pools that are based on Ruby.

## V4-API
https://github.com/uvalib/v4-api
The Virgo 4 API project contains VirgoQuery.g4 and VirgoQueryLexer.g4, which Antlr uses to generate the Ruby parser. The submodule is locked to the \*.g4 version used to generate the current v4parser code in this project.


## `./lib/java` contains the generated java parser.

## Update the git modules

This is only needed if the \*.g4 files change in https://github.com/uvalib/v4-api

0. Initialize and update the git modules with `git submodule init` and `git submodule update`
1. Update the v4-api submodule to the desired commit.
  `git config -f .gitmodules submodule.v4-api.commit b4a6ff8`
2. Then update the code with `git submodule update`

## Generate the Java parser
Adapted from the [v4-api/query-syntax README](https://github.com/uvalib/v4-api/tree/master/query-syntax)

```
$ git submodule update
$ cd v4-api/query-syntax
$ javac -sourcepath ./java/generated/:./java/test -cp ./tool/antlr-4.7.2-complete.jar -d ../../lib/java/ -encoding UTF-8  ./java/generated/edu/virginia/virgo/*.java ./java/test/edu/virginia/virgo/*.java

```

This should generate new ruby code in ./lib/java

Commit any changes including the updated .gitmodules file

### Submodule notes
[Git submodule docs](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
Guidelines:
- Populate the submodule directories with `git submodule init` and `git submodule update`
- Generally, don't change code in the submodule directory. It shouldn't be necessary for this project.
- Submodule config is located at `.gitmodules` and can be manually edited to update v4-api version.

