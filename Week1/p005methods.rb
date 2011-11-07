puts "Say something ('END' to exit program): "
input = ''
while input != 'END'
  STDOUT.flush
  input = gets.chomp
end
puts input