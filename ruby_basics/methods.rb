# 1. Print me (Part 1)
def print_me
  puts "I'm printing within the method!"
end
print_me


# 2. Print me (Part 2)
def print_me2
  "I'm printing the return value!"
end
puts print_me2


# 3. Greetng through methods (Part 1)
def hello
  "Hello"
end
def world
  "World"
end
puts "#{hello} #{world}"


# 4. Greeting through methods (Part 2)
def greet
  "#{hello} #{world}"
end
puts greet


# 5. Make and model
def car(make, model)
  puts "#{make} #{model}" # could remove puts (return no longer nil)
end
car('Toyota', 'Corolla') # could puts car()


# 6. Day or night?
daylight = [true, false].sample
def time_of_day(day)
  if day
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end
time_of_day(daylight)


# 7. Naming animals
def dog(name)
  return name
end
def cat(name)
  return name
end
puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Milo')}."


# 8. Name not found
def assign_name(name='Bob')
  name
end
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'


# 9. Multiply the sum
def add(x, y)
  x + y
end
def multiply(x, y)
  x * y
end
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36


# 10. Random sentence
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']
def name(name_arr)
  name_arr.sample
end
def activity(activities_arr)
  activities_arr.sample
end
def sentence(name_sample, activity_sample)
  "#{name_sample} went #{activity_sample} today!"
end
puts sentence(name(names), activity(activities))
