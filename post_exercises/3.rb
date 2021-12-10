# use select to extract odds to new array
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odds_arr = arr.select do |x|
  x % 2 != 0
end

p odds_arr