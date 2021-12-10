# what will print to screen?
# what will return?

def execute(&block)
  block
end

execute { puts "Hello from inside method"}
# will print the string
# will return nil (puts)

#... Incorrect on both. 
# Nothing printed because blocks have to have the
# call method. Prod object returned