# Recursion to count down to 0
def countdown(x)
  p x
  if x == 0
    x
  else
    countdown(x - 1)
  end
end

countdown(10)