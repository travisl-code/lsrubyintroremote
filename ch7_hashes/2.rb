# use merge and merge!
# explain the differences in these

fav_movies = {
  "Forrest Gump": 10,
  "Hateful Eight": 8,
  "Pan's Labrynth": 10
}

new_fav_movie = {"The Thing": 8}

p fav_movies.merge(new_fav_movie)
# Original hash not mutated
p fav_movies
p fav_movies.merge!(new_fav_movie)
# Now original hash mutated 
p fav_movies