#  written for the ruby class, this method converts F to C 
def convert(deg_f)
  (5.00 / 9.00) * (deg_f.to_f - 32)
end
 
puts convert(100) + convert(212) / 2