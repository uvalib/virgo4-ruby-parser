require File.expand_path("../lib/virgo_parser/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'virgo_parser'
  s.version     = VirgoParser::VERSION
  s.date        = '2019-08-06'
  s.summary     = 'An Antler4 Parser for Virgo'
  s.description = ''
  s.authors     = ['Nestor Walker']
  s.email       = 'naw4t@virginia.edu'
  s.homepage    = ''

  s.files       = Dir["{lib}/**/*.rb", "{lib}/generated/*", "*.md"]

  s.add_runtime_dependency 'antlr4-runtime', '~> 0.2'

  s.require_path = 'lib'

end
