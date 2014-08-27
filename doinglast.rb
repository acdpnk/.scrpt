#!/usr/local/bin/ruby


dl = `doing last`

puts "#{dl}" if !dl.match(/@done/)

