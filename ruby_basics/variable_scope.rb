# Part 1 - what will this print and why?
a = 7
def my_value(b)
  b+= 10
end
my_value(a)
puts a
# Should print 17. a is passed to my_value,
# with local scope b, but integer operation
# should mutate it and return it, then puts it
# wrong... can't mutate numbers and these
# reassignments point to new object


# Part 2 - what will print and why?
a = 7
def my_value(a)
  a+= 10
end
my_value(a)
puts a
# Same as before, a in my_value is still a local scope
# so 7 will be output (new object in method)


# Part 3 - What will print and why?
a = 7
def my_value(b)
  a = b
end
my_value(a + 5)
puts a
# I think this will produce error that a
# is not available in local scope of my_value
# a will sill be 7
# wrong about error, no error; the a in the 
# my_value method is self-contained


# Part 4 - what will print and why?
a = "Xyzzy"
def my_value(b)
  b[2] = '-'
end
my_value(a)
puts a
# a will remain the same; immutatable
# wrong... strings are mutable, and specifically
# String#[]= is a mutating method


# Part 5 - what will print and why
a = "Xyzzy"
def my_value(b)
  b = 'yzzyX'
end
my_value(a)
puts a
# a will still be Xyzzy I think. It should 
# create a new object b local to my_value, and
# that will have values reversed. This mem space
# will hold a new value.


# Part 6 - what will print and why?
a = 7
def my_value(b)
  #b = a + a # commented to avoid future problems
end
my_value(a)
puts a
# I think this will produce error because there
# is no local reference to variable a in my_value 


# Part 7 - what will print and why?
a = 7
array = [1, 2, 3]
array.each do |element|
  a = element
end
puts a
# a = 3. No idea, can't find if a block mutates
# Correct.. block can use/modify variables outside itself


# Part 8 - what will print and why?
# Modfied to use b instead of a since a exists
array = [1, 2, 3]
# array.each do |element| # commented to prevent exception
#   b = element
# end
# puts b
# I expect error. b was not defined outside block
# and no specified as local variable like element.
# Partially correct - error, yes; however, b exists
# locally within the each method but is not accessible 
# outside that method where it is called by puts


# Part 9 - what will print and why
a = 7
array = [1, 2, 3]
array.each do |a|
  a += 1
end
puts a
# a in the each method should be a locally scoped
# variabled, so 7 should print. Inside each method
# the local a becomes 2, 3, 4
# New concept - shadowing (block arg hides local 
# variables defined outside block). Ruby sees the a 
# and first looks for a local variable a and finds one,
# then stops looking.


# Part 10 - what will print and why
a = 7
array = [1, 2, 3]
def my_value(ary)
  ary.each do |b|
    a += b
  end
end
my_value(array)
puts a
# a = 7... a would = 13 if initialized in the my_value
# method. However, a is in outter scope and not pass to the
# method, so not acceptable. The a referenced in the each
# method, then, is a locally scoped variable (it would equal
# 1, then 3, then 6)
# Partially correct... I was right about the variable
# scope stuff, but the problem was with the += assignment 
# operator. Ruby initializes that local variable a as nil,
# which causes an exception (can't + a nil)