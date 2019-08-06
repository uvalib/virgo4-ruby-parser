Gem::Specification.new do |s|
  s.name        = 'virgo-ruby-parser'
  s.version     = '0.0.0'
  s.date        = '2019-08-06'
  s.summary     = 'An Antler4 Parser for Virgo'
  s.description = ''
  s.authors     = ['Nestor Walker']
  s.email       = 'naw4t@virginia.edu'
  s.homepage    = ''

  s.files       = Dir['lib/**/*', 'v4parser/*']

  s.add_runtime_dependency 'antlr4-runtime', '~> 0.2'

  s.require_paths = ['lib']

end
