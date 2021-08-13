def capitalize_long_strings(words)
  if words.length >= 10
    words.upcase
  else
    puts words + ' is ' + words.length.to_s + ' characters long'
  end
end
puts capitalize_long_strings("Somethingalistic")