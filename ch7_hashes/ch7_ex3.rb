require "pry"

my_hash = {name: "travis", age: 35, height: "6 ft 3"}

# Prints all keys
def key_print(my_hash)
  puts "Printing keys in hash:"
  puts my_hash.keys
=begin
  puts "As individual elements:"
  my_hash.keys.each {|k| puts k }
=end
  # binding.pry
end

# Prints all values
def value_print(my_hash)
  puts "Printing values in hash:"
  puts my_hash.values
=begin
  puts "As individual elements:"
  my_hash.values.each {|v| puts v }
=end
end

# Prints both keys and values
def kv_print(my_hash)
  my_hash.each {|k,v| puts "Key: #{k} - Value: #{v}"}
end

key_print(my_hash)
value_print(my_hash)
kv_print(my_hash)
