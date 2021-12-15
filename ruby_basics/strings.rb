# 1. Create a string
empty_string = String.new

# 2. Quote confusion
puts "It's now 12 o'clock."
puts %q(It's now 12 o'clock.)
puts %Q(It's now 12 o'clock.)

# 3. Ignoring case
name = 'Roger'
puts name.casecmp('RoGer') == 0
puts name.casecmp('DAVE') == 0

# 4. Dynamic string
name4 = 'Elizabeth'
puts "Hello, #{name4}!"

# 5. Combining names
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name
full_name2 = first_name + ' ' + last_name
puts full_name2
full_name3 =first_name.concat(" ", last_name)
puts full_name3

# 6. Tricky formatting
state = 'tExAs'
state.capitalize! # downcase! is unnecessary
puts state

# 7. Goodbye, not hello
greeting = 'Hello!'
greeting.replace("Goodbye") # could also use greeting.gsub!("Hello", "Goodbye")
puts greeting

# 8. Print the alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.chars # Could also use alphabet.split('')

# 9. Pluralize
words = 'car human elephant airplane'
words.split(' ').each {|word| puts "#{word}s"}

# 10. Are you there?
# 'blue boredom yellow'.include?(red) would be true because 'boREDom'
colors = 'blue pink yellow orange'
puts colors.include?('yellow')
puts colors.include?('purple')
