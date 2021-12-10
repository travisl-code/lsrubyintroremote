contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# Method 3
sym_array = [:email, :address, :phone]
contacts.each  do |name, hash|
  sym_array.each do |sym|
    hash[sym] = contact_data.shift
  end
end
p contacts

=begin
# Method 1
temp_hash = {}
sym_array = [:email, :address, :phone]
sym_array.each_with_index do |sym, index|
  temp_hash[sym] = contact_data[index]
end
contacts["Joe Smith"] = temp_hash
p contacts
=end

=begin
# Method 2
temp_hash = {}
contact_data.each_with_index do |string, index|
  temp_hash[sym_array[index]] = string
end

test = {"hello" => {}}
test["hello"] = temp_hash
p test
=end

