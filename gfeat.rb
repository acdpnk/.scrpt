#!/usr/local/bin/ruby

command = "git flow feature start #{ARGV[0]}_#{%x(uuidgen)}"

puts command
puts %x(#{command})
