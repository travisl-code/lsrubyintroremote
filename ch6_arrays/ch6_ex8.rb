first = [1, 2, 3, 4, 5]

second = first.map {|x| x + 2 }

p first
p second

# could also initialize second
# first.each {|n| second << n + 2 }