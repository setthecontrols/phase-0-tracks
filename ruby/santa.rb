#Release 0
class Santa

  #attr_reader :gender, :ethnicity

#Release 1
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "----------------Initializing Santa Instance----------------"
  end

#Release 0, do the thing

def speak
  puts "Ho, ho, ho!  Haaaaapy holidays!"
end

def eat_milk_and_cookies(type_of_cookie)
  puts "That was a good #{type_of_cookie} cookie!"
end

#Release 2, Do the thing

def celebrate_birthday
  @age += 1
end

def get_mad_at(reindeer_name)
  @reindeer_ranking.delete(reindeer_name)
  @reindeer_ranking << reindeer_name
  puts @reindeer_ranking
end

def gender=(new_gender)
  @gender = new_gender
end

def age
  age = @age  
end

def ethnicity
  ethnicity = @ethnicity
end

#Release 1, Do the thing

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
random_santa = []

50.times do | i |
random_santa <<  santa =Santa.new(example_genders.sample, example_ethnicities.sample)
puts "Santa's gender: #{santa.gender}"
puts "Santa's ethnicity: #{santa.ethnicity}"

end


santa = Santa.new("neutral", "rainbow")
santa.get_mad_at("Rudolph")

# santa.speak
# santa.eat_milk_and_cookies("Chalkolate Chip")


