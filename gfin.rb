#!/usr/local/bin/ruby


gitbranch = %x(git rev-parse --abbrev-ref HEAD 2>/dev/null)

branch_type = gitbranch.match(/^\w*?(?=\/)/)

branch_name = gitbranch.match(/(?<=\/).*?$/)


command = "git flow #{branch_type} finish #{branch_name}"
puts command
puts %(command)
