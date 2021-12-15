# 1. Even or odd?
count = 1
loop do
  puts "#{count} is even" if count.even?
  puts "#{count} is odd" if count.odd?
  count += 1
  break if count > 5
end


# 2. Catch the number
loop do
  number = rand(100)
  puts number
  # could use Comparable#between? method
  break if number >= 0 && number <= 10
end


# 3. Conditional loop
process_the_loop = [true, false].sample
if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed"
end


# 4. Get the sum
loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end


# 5. Insert numbers
numbers = []
loop do
  puts "Enter any number:"
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers


# 6. Empty the array
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names.shift # pop method to print last to first
  break if names.size == 0 # can use emtpy? method
end


# 7. Stop counting
5.times do |index|
  puts "Index #{index}"
  break if index == 2
end


# 8. Only even
number = 0
until number == 10
  number += 1
  # puts number if number.even? # commenting out, should use next
  next if number.odd?
  puts number
end
# next after increment or it would go into infinite loop on first even number
# next before puts or all numbers (even and odd) would print


# 9. First to five
number_a = 0
number_b = 0
loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end
puts "A: #{number_a}; B: #{number_b}"


# 10. Greeting
def greeting
  puts 'Hello!'
end
number_of_greetings = 2
counter = 0 # required extra variable
while counter != number_of_greetings # 2nd way could be while number_of_greetings > 0
  greeting
  counter += 1 # 2nd way would be number_of_greetings -= 1
end
