# loop through hash and print keys
# do the same with values

fav_movies = {
  "Forrest Gump": 10,
  "Hateful Eight": 8,
  "Pan's Labrynth": 10
}

fav_movies.each do |k, v|
  puts k
end

puts fav_movies.each_value {|v| puts v}