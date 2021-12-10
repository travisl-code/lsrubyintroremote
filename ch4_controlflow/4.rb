# What will print to screen?
'4' == 4 ? puts("TRUE") : puts("FALSE") # FALSE

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?" # this will print
else
  puts "Did you?"
end

y = 9
z = 10
if (z + 1) <= (y)
  puts "Alright."
elsif (z + 1) >= (y)
  puts "Alright now!" # this will print
elsif (y + 1) == z
  puts "ALRIGHT NOW!" # would eval true, but won't execute
else
  puts "Alrighty!"
end