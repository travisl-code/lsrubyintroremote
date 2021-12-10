# make new array of 1-word strings...
# e.g. 'white snow' -> 'white', 'snow'
a = ['white snow', 'winter wonderland', 'melting ice',
'slippery sidewalk', 'salted roads', 'white trees']

new_arr = a.map do |combo|
  combo.split(" ")
end

p new_arr.flatten