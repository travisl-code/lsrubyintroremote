# 1. First car
car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000,
}
p car

# 2. Adding the year
car[:year] = 2003
p car

# 3. Broken odometer
car.delete(:mileage)
p car

# 4. What color?
puts car[:color]

# 5. Labeled numbers
numbers = {
  high: 100,
  medium: 50,
  low: 10
}
numbers.each do |key, value|
  puts "A #{key} value is #{value}."
end

# 6. Divided by two
half_numbers = numbers.map do |k, v|
                v / 2
              end
p half_numbers

# 7. Low, medium or high?
low_numbers = numbers.select do |k, v|
  v < 25
end
p low_numbers

# 8. Low or nothing
# Assignment to new variable is unnecessary because the
# original hash is mutated. Creates an alias.
low_numbers = numbers.select! do |k, v|
  v < 25
end
p low_numbers
p numbers

# 9. Multiple cars
cars = {
  car: {
    type: 'sedan',
    color: 'blue',
    year: 2003
  },
  truck: {
    type: 'pickup',
    color: 'red',
    year: 1998
  }
}
p cars

# 10. Which collection?
car_arr = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
p car_arr
