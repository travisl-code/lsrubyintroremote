# Iterate over the hashes
contact_data = [["joe@email.com", "123 Main St.", "555-123-4567"],
["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

=begin
sym_array = [:email, :address, :phone]
contacts.each do |name, hash|
  temp = contact_data.shift
  sym_array.each do |sym|
    hash[sym] = temp.shift
  end
end
=end

fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts