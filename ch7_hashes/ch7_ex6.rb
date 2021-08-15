x = "hi there"
h1 = {x: "some value"}
h2 = {x => "some value"}

# I was WRONG here... see below
# There is no difference between the hashes.
# h2 uses the old hash syntax, and h1 the new

if h1 == h2
  puts "Equal"
else
  puts "Not equal" # prints not equal!
end

=begin
irb(main):001:0> x = "hi there"
irb(main):002:0> h1 = {x: "some value"}
irb(main):003:0> h1
=> {:x=>"some value"}
irb(main):004:0> h2 = {x => "some value"}
irb(main):005:0> h2
=> {"hi there"=>"some value"}
=end

# I got tripped on the x...
# h1 creates a symbol :x
# h2 uses the string of x for the key