#  written for the ruby class, this method converts F to C

def convert(deg_f)
  deg_c = deg_f.to_f - 32 * 9 / 5 
  return deg_c
end

puts convert(212)