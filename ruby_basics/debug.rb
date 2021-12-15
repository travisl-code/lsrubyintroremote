# 1. Reading error messages
# wrong number of arguments (given 6, expected 1)
# Means that the method find_first_nonzero_among only expected 1 arg
# but it got 6, because those numbers aren't an array
# Second method - undefined method `each' for 1:Integer 
# The each method can't be called on an integer
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end
find_first_nonzero_among([0, 0, 1, 0, 2, 0])
# find_first_nonzero_among(0, 0, 1, 0, 2, 0) # was this
find_first_nonzero_among([1])
# find_first_nonzero_among(1) # was this


# 2. Weather forecast
def predict_weather
  sunshine = [true, false].sample
  # sunshine = ['true', 'false'].sample # was this
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
predict_weather

# 3. Multiply by five
def multiply_by_five(n)
  n * 5
end
puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i
#number = gets.chomp # was this
puts "The result is #{multiply_by_five(number)}!"

# 4. Pets
pets = {
  cat: 'fluffy',
  dog: ['sparky', 'fido'],
  fish: 'oscar'
}
pets[:dog] << 'bowser' # could also do pets[:dog].push('bowser')
# pets[:dog] = 'bowser' # was this
p pets

# 5. Even numbers
# map method returns new array with last expression in block as each index.
# select method should be used to return new array with truthy values.
numbers = [5, 2, 9, 6, 3, 1, 8]
even_numbers = numbers.select do |n|
#even_numbers = numbers.map do |n| # was this
  n if n.even? # not given a value for odd?
end
p even_numbers

# 6. Confucius says
# Was a series of 3 if/end statements. Refactored as
# if/elsif/else statement. Could case as well. If returns
# nil if false.
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forgot. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  else
    'Wise quote here.'
  end
end
puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# 7. Account balance
# This problem overwrote balance each month instead
# of accumulating it with +=
balance = 0
january = {
  income: [1200, 75],
  expenses: [650, 140, 33.2, 100, 26.9, 78]
}
february = {
  income: [1200],
  expenses: [650, 140, 320, 46.7, 122.5]
}
march = {
  income: [1200, 10, 75],
  expenses: [650, 140, 350, 12, 59.9, 2.5]
}
def calculate_balance(month)
  plus = month[:income].sum
  minus = month[:expenses].sum
  plus - minus
end
[january, february, march].each do |month|
  balance += calculate_balance(month)
  # balance = calculate_balance(month) # was this
end
puts balance

# 8. Colorful things
# Length of arrays is not equal, and extending beyond the range of an array in
# Ruby returns a nil, which can't be concatenated.
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']
colors.shuffle!
things.shuffle!
i = 0
loop do
  break if i >= colors.length || i >= things.length
  # break if i > colors.length # was this
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# 9. Digit product
# Code takes string of number characters and converts to array of ints.
# Then tries to multiple product (0) by each digit, but 0 * n = 0
def digit_product(str_num)
  digits = str_num.chars.map {|n| n.to_i}
  product = 1
  # product = 0 # was this
  digits.each do |digit|
    product *= digit
  end
  product
end
p digit_product('12345')

# 10. Warriors and wizards
# no implicit conversion of nil into Hash
# nil value because input was string, not a symbol (what hashes use).
# Also needed to 
player = {
  strength: 10,
  dexterity: 10,
  charisma: 10,
  stamina: 10
}
character_classes = {
  warrior: {strength: 20},
  thief: {dexterity: 20},
  scout: {stamina: 20},
  mage: {charisma: 20}
}
puts "Please type your class (warrior, thief, scout, mage):"
input = gets.chomp.downcase.to_sym 
# input = gets.chomp.downcase # was this
# I didn't need this expanded syntax...
player.merge!(character_classes[input]) do |key, oldval, newval|
  newval
end
# player.merge(character_classes[input]) # was this
puts "Your character stats:"
puts player
