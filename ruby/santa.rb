class Santa
  attr_reader :gender
  attr_accessor :age, :ethnicity

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    @random_age = rand(140)
    
    puts ""
    puts "-"*20
    puts "Santa's gender is #{@gender}"
    puts "Santa's ethnicity is #{@ethnicity} and"
    puts "Santa is #{@random_age} years old."
    puts "-"*20
    puts ""
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
 
  def celebrate_birthday
    @age = 0
    @age = @age + 1 
    p "Santa is a whopping #{@age} years old!"
  end

  def get_mad_at(reindeer_in_last_place,bad_reindeer)
    # reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @reindeer_ranking.insert(@reindeer_ranking.index(reindeer_in_last_place), @reindeer_ranking.delete_at(@reindeer_ranking.index(bad_reindeer)))
    puts "#{bad_reindeer} was bad and is now at te bottom of the list here:"
    puts @reindeer_ranking
  end
  # get_mad_at("Blitzen", "Rudolph")
end
 


# santas = []
# Use our array of example genders and an array of example ethnicities to generate random values for each
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# #create santas using user input nubmer. 
# #get input 
puts "Tell me how many Santas you require."
santa_num = gets.chomp.to_i
# #create loop based on user input
  santa_num.times do 
  # puts "working"
  #initialize instances of santa with random samples from gender and ethnicities and random age (printed from initialize).  
    Santa.new(example_genders.sample, example_ethnicities.sample)
end





# santa = Santa.new("can't figure it out", "purple")
# santa.speak
# santa.eat_milk_and_cookies("Proposition 64")
# santa.get_mad_at("Blitzen", "Rudolph")
# santa.celebrate_birthday
# puts @reindeer_ranking



 # santas = []
 #  santas << Santa.new("agender", "black")
 #  santas << Santa.new("female", "Latino")
 #  santas << Santa.new("bigender", "white")
 #  santas << Santa.new("male", "Japanese")
 #  santas << Santa.new("female", "prefer not to say")
 #  santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
 #  santas << Santa.new("N/A", "N/A")
