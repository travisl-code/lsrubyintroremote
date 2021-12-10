# exception handling
x = 19
begin
  x.each {|num| puts num}
rescue => exception
  p exception
end

puts "Testing..."

# Can also in-line rescue
x.each {|num| puts num} rescue puts "Can't"

puts "Testing 2..."

# Can also rescue pre-existing errors
begin
  puts 4 / 0
rescue ZeroDivisionError => e
  puts e.message
end
puts "Testing 3..."