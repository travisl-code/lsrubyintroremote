# 1. New pet
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "My pet is a #{my_pet}."

# 2. More than one
my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# 3. Free the lizard
my_pets.pop
puts "I have a pet #{my_pets[0]}!"

# 4. One isn't enough
my_pets.push(pets[1])
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# 5. What color are you?
colors = ['red', 'yellow', 'purple', 'green']
colors.each { |color| puts "I'm the color #{color}!"}

# 6. Doubled
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map {|number| number * 2}
p doubled_numbers

# 7. Divisble by three
numbers2 = [5, 9, 21, 26, 39]
divisible_by_three = numbers2.select {|number| number % 3 == 0}
p divisible_by_three

# 8. Favorite number (Part 1)
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# 9. Favorite number (Part 2)
p favorites.flatten

# 10. Are we the same?
array1 = [1, 5, 9]
array2 = [1, 9, 5]
puts array1 == array2
