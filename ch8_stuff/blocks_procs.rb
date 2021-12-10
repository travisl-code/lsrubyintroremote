def take_block(number, &block)
  block.call(number)
end

number = 42

take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

my_proc = Proc.new do |num|
  puts "Proc being called in method. #{num}"
end

take_block(number, &my_proc)