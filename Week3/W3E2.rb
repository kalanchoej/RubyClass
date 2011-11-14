def replace_in_file(file, find, replace)
  f = File.new(file, "r+")
  newfile = Array.new
  f.readlines.each_with_index do |line, index|
    if line.match(find)
      newfile << line.gsub(find, replace)
    else
      newfile << line
    end
  end
  f.rewind
  f.puts newfile
  f.close
end

replace_in_file("testtesttest.txt", "word", "inserted word")