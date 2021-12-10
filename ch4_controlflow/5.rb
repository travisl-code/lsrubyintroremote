=begin
This code will not execute b/c there is no
end statement after the if/else block
Fixed below comments

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end
=end

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)