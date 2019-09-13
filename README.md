# Virgo 4 Ruby Parser

This project contains the parser for Virgo 4 Pools. It compiles the parser from the v4-api project and exposes it for jruby applications.

## V4-API
https://github.com/uvalib/v4-api
The Virgo 4 API project contains VirgoQuery.g4 and VirgoQueryLexer.g4, which Antlr uses to generate the Ruby parser. The submodule is locked to the \*.g4 version used to generate the current v4parser code in this project.

## Usage
Jruby is required.
Add this to your Gemfile `gem 'virgo_parser', github: 'uvalib/virgo4-ruby-parser'`
`bundle install` or `bundle update`

`require 'virgo_parser'`
VirgoParser::EDS.parse("string_to_parse")

## Update Instructions
Update to the latest parser by running `./update.sh`
This will update the submodule and regenerate the parser files. It then loads them into a jar file that is used by by jruby through this gem.

Commit any changes including the updated .gitmodules file

