def test_lab(string)
  if /lab/.match(string) # case insensitive could be /lab/i
    puts "#{string} has 'lab' in it"
  else
    puts "#{string} does not have 'lab' in it"
  end
end

test_lab("laboratory")
test_lab("experiment")
test_lab("Pans Labyrinth") # match is case sensitive
test_lab("elaborate")
test_lab("polar bear")