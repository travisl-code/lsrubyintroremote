# Why does this code give error?
=begin
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end

# Seems like a block (using &block) isn't technically an
# argument, but "block" w/o & signals a non-block parameter

#... put simpler, Ruby doesn't expect a block to be passed
# w/o the &
def execute(block)
  block
end

execute { puts "Hello from inside method"}
