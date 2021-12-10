# Example of a do/while loop
# This is used when we want action to be
# executed at least once, no matter what

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

=begin
If we use a standard while loop, the condition
is checked first, and we may not even 
execute the code.
i = 0
while i >= 0 # <- while loop wouldn't execute
  something
end
=end