# Modified to return the concatenated string
# Could also puts from the method and return nil
def scream(words)
  return words += "!!!!"
end

puts scream("Yippeee")

# Output concatenation, return nil
def scream2(words)
  words += "!!!!"
  puts words
end

scream2("Heyyooo")