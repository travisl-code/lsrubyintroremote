x = 2341

thousands = x / 1000
hundreds = x / 100 % 10
tens = x / 10 % 10
ones = x % 10

puts "#{thousands}, #{hundreds}, #{tens}, #{ones}"