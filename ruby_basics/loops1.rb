# 1. Runaway loop fixed
loop do
  puts 'Just keep printing...'
  break # breaks after first loop
end


# 2. Loopception
loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end
puts 'This is outside all loops.'


# 3. Control the loop
iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  break if iterations >= 5
  iterations += 1
  #break if iterations > 5
end


# 4. Loop on command
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end


# 5. Say hello
say_hello = true
count = 0
while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end


# 6. Print while
numbers = []
while numbers.size < 5
  numbers << rand(1..99)
end
puts numbers


# 7. Count up
count = 1
until count > 10
  puts count
  count += 1
end


# 8. Print until
numbers = [7, 9, 13, 25, 18]
until numbers.size == 0
  puts numbers.shift # I chose a destructive approach
end


# 9. That's odd
for i in 1..100
  puts i if i % 2 != 0 # Could use the odd? method
end


# 10. Greet your friends
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for friend in friends
  puts "Hello, #{friend}!"
end