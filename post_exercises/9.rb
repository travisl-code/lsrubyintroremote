h = {a:1, b:2, c:3, d:4}

# Value of key :b
p h[:b]

# add key/value pair e:5
h[:e] = 5
p h

# remove key:value pairs where value < 3.5
h.delete_if do |k, v|
  v < 3.5
end

p h