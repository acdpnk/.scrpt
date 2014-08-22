#!/usr/local/bin/ruby

command = "git flow hotfix start #{ARGV[0]}_#{%x(uuidgen)}"

puts command
puts %x(command)
