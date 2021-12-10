x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# Returns 2, 3, 4, 5, 6
# Incorrect... returns original array
# Each always returns original array.