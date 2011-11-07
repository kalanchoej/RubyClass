#  written for the ruby class, this method converts F to C

require "./converter.rb"
 
def convert(in_val, in_units, out_units)
  TemperatureConverter.new.convert(in_val, in_units, out_units)
end
 
puts "Please enter the temperature you would like to convert."
in_val = gets.chomp
 
puts "What units are you using? (Valid options are F, C, K, R)"
in_units = gets.chomp
 
puts "What units would you like to convert to? (Valid options are F, C, K, R)"
out_units = gets.chomp
 
puts sprintf("%.2f in %s is %.2f in %s", in_val, in_units, convert(in_val, in_units, out_units), out_units)
STDOUT.flush
puts convert(100, 'c', 'f') + convert(0, 'c', 'f')