# 5 city names key=city value=area code

#input from user on city name

# display area code based on choice

# loop- keep program running and prompt for new city names to look up until  choode no

cities = {
    "Birmingham" => "205",
    "Tuscaloosa" => "335",
    "Hoover" => "206"
}

def get_city (hash) 
  hash.each{|k, v| puts k}
end

def get_area (hash, key)
    somehash[key]
end

loop do 
  puts "Look up city name? Y/N"
  answer = gets.chomp
  if answer != "Y"
    puts "invalid entry" 
    break
  end
    
  puts "which city to look up?"
    get_city(cities)
    prompt = gets.chomp
    if cities.include?(prompt)
        puts get_area(cities, prompt)
    else 
        puts "invalid Selection"
    end
end


