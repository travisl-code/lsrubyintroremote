# trying to produce error...
# NoMethodError: undefined method 'keys' for Array

arr = [1, 2, 3]
p arr.keys

# Problem is we're trying to use a Hash method
# (keys) on an array data type.

# answer B