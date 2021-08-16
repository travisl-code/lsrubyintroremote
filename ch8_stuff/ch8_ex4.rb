# modify code from ex.2 to make it work

def execute(&block)
  block.call # invoke call method on proc object
end

execute { puts "Hello from inside the execute method!" }