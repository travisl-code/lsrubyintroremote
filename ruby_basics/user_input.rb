# 1. Repeat after me
puts "Type anything you want:"
answer = gets.chomp
puts answer


# 2. Your age in months
puts "What's your age in years?"
age = gets.chomp.to_i
puts "You are #{age * 12} months old."


# 3. Print something (Part 1)
puts "3. Do you want me to print something? (y/n)"
answer = gets.chomp.downcase
if answer == 'y' then puts 'something' end
# case answer
# when "y"
#   puts "something"
# else
#   return
# end


# 4. Print something (Part 2)
answer = nil
loop do
  puts "4. Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  break if %w(y n).include?(answer)
  puts 'Invalid input.'
  # my solution commented out
  # if answer == 'y'
  #   puts "something"
  #   break
  # elsif answer == 'n'
  #   return
  #   break
  # else
  #   puts "Invalid input."
  # end
end
puts 'something' if answer == 'y'


# 5. Launch School printer (Part 1)
lines = nil
loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  lines = gets.chomp.to_i
  puts "That's not enough lines" if lines < 3 # eval not needed if break moved up
  break if lines >= 3
end
lines.times {puts "Launch School is the best!"}


# 6. Passwords
PASS_CONST = 'heykitten'
loop do
  puts "6. Please enter your password"
  user_pw = gets.chomp
  # if/else statement not needed if welcome outside loop
  if user_pw == PASS_CONST
    puts "Welcome!"
    break
  else
    puts "Invalid password!"
  end
end


# 7. Username and password
USER = "admin"
loop do
  puts "7. Please enter a username:"
  user_try = gets.chomp
  puts "7. Please enter a password:"
  pw_try = gets.chomp
  break if user_try == USER && pw_try == PASS_CONST
  puts "Authorization failed!"
end
puts "Welcome!"


# 8. Dividing numbers
def valid_numer?(number_string)
  number_string.to_i.to_s == number_string
end
# Could have also done multiple loops. Would work better
# because it wouldn't require re-entering numerator. My
# orginal solution below this one.
numerator = nil
denominator = nil
loop do
  puts "Please enter numerator:"
  numerator = gets.chomp
  break if valid_numer?(numerator)
  puts "Invalid input. Integers only."
end
loop do
  puts "Please enter denominator:"
  denominator = gets.chomp
  if denominator == "0"
    puts "Invalid. Denominator can't be 0"
    # could use if/else instead of next
    next
  end
  break if valid_numer?(denominator)
  puts "Invalid input. Integers only."
end
result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} = #{result}"
# loop do
#   puts "Please enter the numerator:"
#   numerator = gets.chomp
#   if valid_numer?(numerator)
#     puts "Please enter the denominator:"
#     denominator = gets.chomp
#     if denominator == "0"
#       puts "Invalid input. Denominator of 0 not allowed."
#       next
#     end
#     if valid_numer?(denominator)
#       puts numerator.to_i / denominator.to_i
#       break
#     end
#   end
#   puts "Invalid input. Only integers allowed."
# end


# 9. Launch School printer (Part 2)
loop do
  puts "How many lines do you want? Enter number >= 3 or Q to quit:"
  lines = gets.chomp
  if lines == 'q'
    break
  elsif lines.to_i < 3
    puts "That's not enough lines"
  else
    lines.to_i.times {puts "Launch School is the best!"}
  end
end


# 10. Opposites attract
def valid_numer?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
loop do
  puts "Please enter positive or negative integer:"
  number1 = gets.chomp
  puts "Please enter positive or negative integer:"
  number2 = gets.chomp
  if valid_numer?(number1) && valid_numer?(number2)
    if (number1.to_i < 0 && number2.to_i > 0) || (number1.to_i > 0 && number2.to_i < 0)
      result = number1.to_i + number2.to_i
      puts "#{number1} + #{number2} = #{result}"
      break
    else
      puts "Sorry, 1 integer must be positive, 1 negative"
      puts "Please start over."
    end
  else
    puts "Invalid input. Only non-zero integers allowed."
  end
end
