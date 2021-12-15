# 1. Breakfast, Lunch, or Dinner (Part 1)
# Will return and print 'Breakfast' because it is a string returned.
def meal
  return 'Breakfast'
end
puts meal

# 2. Breakfast, Lunch, or Dinner (Part 2)
# Will print and return 'Evening' because it's the last expression
# in the method.
def meal2
  'Evening'
end
puts meal2

# 3. Breakfast, Lunch, or Dinner (Part 3)
# Will print and return 'Breakfast' because the return statement
# explicitly happens before the last line of the method.
def meal3
  return 'Breakfast'
  'Dinner'
end
puts meal3

# 4. Breakfast, Lunch, or Dinner (Part 4)
# Will print 'Dinner' and then return 'Breakfast', which will also
# be printed be meal4 if invoked with the puts method.
def meal4
  puts 'Dinner'
  return 'Breakfast'
end
puts meal4

# 5. Breakfast, Lunch, or Dinner (Part 5)
# 'Dinner' with be printed by the puts statement, but nil will
# be returned, so the invocation of meal5 with p will print nil
def meal5
  'Dinner'
  puts 'Dinner'
end
p meal5

# 6. Breakfast, Lunch, or Dinner (Part 6)
# Ruby won't execute the lines with 'Dinner' in this method. 
# 'Breakfast' gets returned explicitly and then printed by puts.
def meal6
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end
puts meal6

# 7. Counting sheep (Part 1)
# Each iteration will print its number, starting 0 - 4, in the method.
# However, the method call with puts will print nil because it was returned
# by the last puts statement.
# Wrong... times method returns the number it was given (5).
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end
puts count_sheep

# 8. Counting sheep (Part 2)
# Prints 0 - 4 like last time, but 10 is returned b/c it's the
# last expression in the method. It will be printed as well.
def count_sheep2
  5.times do |sheep|
    puts sheep
  end
  10
end
puts count_sheep2

# 9. Counting sheep (Part 3)
# Only 0 - 2 will be printed. On 3rd iteration (when sheep = 3),
# the if statement will evaluate true and return explicitly.
# I think it will be nil since there is no expression, so p will print nil.
def count_sheep3
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end
p count_sheep3

# 10. Tricky number
# true will always evaluate to true, so the if part of the if/else
# statment should execute. I think 1 will return; I believe variables
# return their value on assignment?
def tricky_number
  if true
    number = 1
  else
    2
  end
end
puts tricky_number
