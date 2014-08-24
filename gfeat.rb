#!/usr/local/bin/ruby

command = "git flow feature start #{ARGV[0]}_#{%x(date +%y%m%d%H%M%S)}"

puts command
puts %x(#{command})
