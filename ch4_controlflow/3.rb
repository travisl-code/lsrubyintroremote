puts "Enter a number between 0 - 100"
number = gets.chomp.to_i

if number >= 0 && number <= 50
  puts "Between 0 - 50"
elsif number > 50 && number <= 100
  puts "Between 51 - 100"
else
  puts "Greater than 100"
end