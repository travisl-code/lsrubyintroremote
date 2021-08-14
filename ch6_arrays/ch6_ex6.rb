=begin
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
=end

# Code above Results in error, no string to integer
# Follow below to fix

names = ['bob', 'joe', 'susan', 'margaret']
names[-1] = 'jody'