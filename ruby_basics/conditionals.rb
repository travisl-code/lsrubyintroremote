# 1. Unpredictable weather (Part 1)
sun = ['visible', 'hidden'].sample
puts "1. The sun is so bright!" if sun == 'visible'

# 2. Unpredictable weather (Part 2)
puts "2. The clouds are blocking the sun!" unless sun == 'visible'

# 3. Unpredictable weather (Part 3)
puts "3. The sun is so bright!" if sun == 'visible'
puts "3. The clouds are blocking the sun!" unless sun == 'visible'

# 4. True or false
boolean = [true, false].sample
puts boolean ? "I'm true!" : "I'm false!"
# boolean ? puts("I'm true!") : puts("I'm false!")

# 5. Truthy number
# The code under if statement will always run unless the value of 
# number is 0 (correction - false) or nil. All other values are truthy.
number = 7
if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# 6. Stoplight (Part 1)
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when 'green'
  puts "Go!"
when 'yellow'
  puts "Slow down!"
else
  puts "Stop!"
end

# 7. Stoplight (Part 2)
if stoplight == 'green'
  puts "Go!"
elsif stoplight == 'yellow'
  puts "Slow down"
else
  puts "Stop!"
end

# 8. Sleep alert
status = ['awake', 'tired'].sample
string = if status == 'awake'
  "Be productive!"
else
  "Go to sleep!"
end
puts string

# 9. Cool numbers
number = rand(10)
if number == 5
  puts "5 is a cool number!"
else
  puts "Other numbers are cool too"
end

# 10. Stoplight (Part 3)
case stoplight
when 'green'  then puts "Go!"
when 'yellow' then puts "Slow down!"
else               puts "Stop!"
end