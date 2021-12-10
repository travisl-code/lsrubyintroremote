# Make 2.rb work right
def execute(&block)
  block.call
end

execute { puts "Hello from inside method"}
