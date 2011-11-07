# A script to print multiplication tables

def row(factor1, factor2, length)
  row = ''
  i = 1
  while i <= factor2
    row << format("%#{length}d ", (i * factor1).to_s)
    i += 1
  end
  row
end

def cell_width(integer)
  (integer**2).to_s.length
end

def decorate(integer)
  decoration = ''
  width = ((cell_width(integer) + 1) * integer)
  i = 0
  while i < width
    decoration << "="
    i += 1
  end
  decoration
end

def format_heading(heading, integer)
  margin = (decorate(integer).length / 2) + (heading.length / 2)
  format("%#{margin}s", heading)
end
  

def multiplication_table(integer, heading = true, decorate = false)
  i = 1
  table = ''
  if (heading == true) 
    heading = "Multiplication Table to " + integer.to_s
    table << format_heading(heading, integer) + "\n"
  end
  if (decorate == true)
    table << decorate(integer) + "\n"
  end
  while i <= integer
    table << row(i, integer, cell_width(integer)) + "\n"
    i += 1
  end
  if (decorate == true)
    table << decorate(integer) + "\n"
  end
  table
end

table1 = multiplication_table(5, false, false)
table2 = multiplication_table(10, false, true)
table3 = multiplication_table(20, true, true)

puts table1
puts
puts table2
puts
puts table3
