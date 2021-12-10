# copy data from array into empty hash
contact_data = [["joe@email.com", "123 Main St.", "555-123-4567"],
["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Manually setting the array data into hash (this works)

contacts["Joe Smith"] = {
  email: contact_data[0][0],
  address: contact_data[0][1],
  phone: contact_data[0][2]
}
contacts["Sally Johnson"] = {
  email: contact_data[1][0],
  address: contact_data[1][1],
  phone: contact_data[1][2]
}

p contacts


=begin
# Using methods to set array into hash. Couldn't get this working.
temp_hash = {}

p contacts

regex_test = Proc.new do |string|
  p temp_hash
  if /@email.com/.match(string)
    temp_hash[:email] = string
  elsif /St.|Dr./.match(string)
    temp_hash[:address] = string
  elsif /\d\d\d-\d\d\d-\d\d\d\d/.to_s.match(string)
    temp_hash[:phone] = string
  else
    nil
  end
end

contact_data.each_with_index do |val, ind|
  puts "#{ind}: #{val}"
  temp_hash = val.each {|x| regex_test.call(x)}
  contacts["Joe Smith"] = temp_hash
end

p contacts
=end