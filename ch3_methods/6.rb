
=begin
  ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

Error replicated below. Signals that method was defined to take
2 parameters but only 1 arg was passed
=end

def calculate_product(a, b)
  a * b
end
calculate_product(3)