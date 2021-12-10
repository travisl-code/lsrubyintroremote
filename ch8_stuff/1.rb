# check to see if "lab" exists in following
# strings. Print word if yes.

# Going to test with a proc...
lab_regex_proc = Proc.new do |word|
  if /lab/.match(word)
    puts "#{word} contains lab"
  else
    puts "#{word} does not contain lab"
  end
end
lab_regex_proc.call("laboratory")
lab_regex_proc.call("experiment")
lab_regex_proc.call("Pans Labyrinth")
lab_regex_proc.call("elaborate")
lab_regex_proc.call("polar bear")

=begin
def check_regex(check_word)
  lab_regex_proc = Proc.new do |word|
    if /lab/.match(word)
      puts "#{word} contains lab"
    else
      puts "#{word} does not contain lab"
    end
  end
  lab_regex_proc.call(check_word)
end

check_regex("laboratory")
check_regex("experiment")
check_regex("Pans Labyrinth") # case sensitive!
check_regex("elaborate")
check_regex("polar bear")
=end