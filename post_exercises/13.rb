# use Array delete_if method
# and string start_with? method
# to delete strings beginning with "s"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |string|
  string.start_with?("s")
end

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |string|
  string.start_with?("s", "w")
end

p arr