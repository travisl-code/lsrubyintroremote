# what is exception handling?
# what does it solve?

# Exception handling gives a rescue operation
# where an error would normally be thrown.
# It solves the problem of having program crash
# when there is an error. Also solves issues with 
# data being wrong type (standard problem)

begin
  p 16 / 0
rescue => exception
  puts exception.message
end

puts "Program is still running!"