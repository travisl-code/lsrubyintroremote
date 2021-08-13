puts "Pick a number from 0 - 100"
number = gets.chomp.to_i

if number < 0
  puts "You can't use a negative number."
elsif number <= 50
  puts "Your number is between 0 - 50"
elsif number <= 100
  puts "Your number is between 51 - 100"
else
  puts "That number is greater than 100."
end