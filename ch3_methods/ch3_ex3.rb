def multiply(a, b)
  a * b
end

puts "what is your first number?"
a = gets.chomp.to_i
puts "what is your second number?"
b = gets.chomp.to_i

puts multiply(a, b)