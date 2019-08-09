module VirgoParser
  require 'virgo_parser/eds'
  require 'java'
  $CLASSPATH << File.expand_path('./lib/java')
  puts $CLASSPATH
  java_import 'edu.virginia.virgo.Main'
end
