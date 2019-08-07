# Virgo 4 Ruby Parser
This project contains the parser for Virgo 4 Pools that are based on Ruby.


It contains 2 submodules for ease of access and to lock the version of each dependency.

## Antlr4
https://github.com/twalmsley/antlr4/tree/ruby_dev
This is a modified version of Antlr 4 to support a Ruby language target.

## V4-API
https://github.com/uvalib/v4-api
The Virgo 4 API project contains VirgoQuery.g4 and VirgoQueryLexer.g4, which Antlr uses to generate the Ruby parser. The submodule is locked to the \*.g4 version used to generate the current v4parser code in this project.


## `./lib/generated` contains the generated ruby parser.


## Antlr4 Ruby Runtime
https://github.com/MODLanguage/antlr4-ruby-runtime
"This gem adds support for the ANTLR4 runtime for Ruby lexers and parsers generated from the Ruby langauge target"
This gem should be added to the project using the parser and provides a wrapper for the generated code here. See this project's README for more info.


## Update the git modules

This is only needed if the \*.g4 files change in https://github.com/uvalib/v4-api

0. Initialize and update the git modules with `git submodule init` and `git submodule update`
1. Update the v4-api submodule to the desired commit.
  `git config -f .gitmodules submodule.v4-api.commit b4a6ff8`
2. Then update the code with `git submodule update`

## Generate the Ruby Grammar
This needed Java 11. Instructions adapted from [Antlr4 Ruby Runtime.](https://github.com/MODLanguage/antlr4-ruby-runtime)

```
$ git submodule update
$ cd antlr4
$ export MAVEN_OPTS="-Xmx1G"
$ mvn clean
$ mvn -DskipTests install
$ cd ../lib/generated
$ java -jar ~/.m2/repository/org/antlr/antlr4/4.7.3-SNAPSHOT/antlr4-4.7.3-SNAPSHOT-complete.jar \
    -o <output_dir_full_path> `#full path to lib/generated` \
    -listener \
    -visitor \
    -package VirgoQuery \
    -Dlanguage=Ruby \
    ../v4-api/v4parser/VirgoQueryLexer.g4 ../v4-api/VirgoQuery.g4
```

This should generate new ruby code in ./lib/generated

Commit any changes including the updated .gitmodules file

### Submodule notes
[Git submodule docs](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
Guidelines:
- Populate the submodule directories with `git submodule init` and `git submodule update`
- Generally, don't change code in the submodule directory. It shouldn't be necessary for this project.
- Submodule config is located at `.gitmodules` and can be manually edited to update v4-api version.

