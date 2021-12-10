# return all caps string if it's 10+ ch
def capitalize(str)
  if str.length > 10 then puts str.upcase else str end
end

capitalize('hello world!')