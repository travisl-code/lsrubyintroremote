# use each_with_index method
arr = ['cat', 'dog', 'goldfish']

arr.each_with_index do |val, index|
  puts "#{index}: #{val}"
end
