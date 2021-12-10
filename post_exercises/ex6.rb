# reworking array to remove duplicates and stuff

# original
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# second array
new_arr = arr.select {|n| n.to_i.odd?}

# adding a few values
arr.append(11).prepend(3)
arr << 11

# removing duplicates
arr = arr.uniq
p arr