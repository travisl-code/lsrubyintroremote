#method that counts down to zero using recursion

def countdown(number)
  if number >= 0
    puts number
    number -= 1
    countdown(number)
  else
    puts number
  end
end

countdown(-3)