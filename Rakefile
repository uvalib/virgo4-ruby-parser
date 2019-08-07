require "bundler"
Bundler.setup

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("virgo4-ruby-parser.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["virgo4-ruby-parser.gemspec"] do
  system "gem build virgo4-ruby-parser.gemspec"
  system "gem install virgo4-ruby-parser-#{VirgoParser::VERSION}.gem"
end
