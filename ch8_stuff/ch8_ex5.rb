def execute(block)
  block.call
end

execute {puts "Hello from in execute method"}

=begin
Code above returns this error:
Traceback (most recent call last):
        1: from ch8_ex5.rb:5:in `<main>'
ch8_ex5.rb:1:in `execute': wrong number of arguments (given 0, expected 1) (ArgumentError)

Stack trace - line 5 (main function), line 1 (the block parameter)
Problem is that a block parameter needs to be defined with the & character (&block)
Without this, the block cannot be passed to the method.
=end