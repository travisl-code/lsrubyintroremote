y = 0
3.times do
  y += 1
  x = y
end
puts x

=begin
This will error b/c x is local scope in 
the block.
=end