#each for iteration
#map for transformation

x = [1, 2, 3]

#each iterates, return original array
x.each {|num| puts "#{num}"}

#map tranforms, returns new array
x.map {|num| num**2}