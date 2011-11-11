# Line 1: Welcome to the forum.
# Line 2: Here you can learn Ruby.
# Line 3: Along with other members.


s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

s.each_line.with_index(1) { |line, index| puts "Line #{index}: #{line}" }