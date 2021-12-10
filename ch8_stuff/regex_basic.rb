# 2 ways to do simple RegEx matching
test = "Hello Mississippi."

# 1st way:
test =~ /ss/

# 2nd way
/ss/.match(test)

# Both return a match:
# 1st an index, 2nd a match object