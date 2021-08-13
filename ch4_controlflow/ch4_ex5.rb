=begin
The following code results in this error:
exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

It does this because there's no end to the if/else statement, only to the method definition.
To fix, a 2nd end statement needs to be added to the method to close the if/else statement.
=end

=begin
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)
=end

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end # adding this end fixes the issue
end

equal_to_four(5)