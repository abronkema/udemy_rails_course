cities = {
  'vienna' => '703',
  'dc' => '202',
  'charlottesville' => '434',
  'richmond' => '804',
  'gainesville' => '540'
}

# get the city name from the hash
def list_cities(cities)
  puts cities.keys
end

# get area code based on given hash and key
def get_area_code(cities, city_name)
  if !cities.key?(city_name)
    puts "\nInvalid city. Please try again."
  else
    puts "\n#{city_name} is #{cities[city_name]}"
  end
end

loop do
  puts 'Do you want to lookup an area code based on a city name? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  list_cities(cities)
  puts 'Which city would you like to look up?'
  city_name = gets.chomp.downcase
  get_area_code(cities, city_name)
end
