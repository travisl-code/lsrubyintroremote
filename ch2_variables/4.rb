puts 'Enter your name.'
name = gets.chomp
puts "Hi #{name}."

10.times {puts name + ' '}
puts "\nWhat is your last name?"
last_name = gets.chomp
puts "#{name} #{last_name}"