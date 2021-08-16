def execute(&block)
  block
end

execute {puts "Block from inside the execute method!"}

# output to screen is the message in the block
# I think nil is returned, since the execute method
# will return last line executed (the block), and the
# block contains a puts statement, which should be nil