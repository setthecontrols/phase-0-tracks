class Santa
  attr_reader :gender
  attr_accessor :age, :ethnicity

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
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

santa = Santa.new("can't figure it out", "purple")
santa.speak
santa.eat_milk_and_cookies("Proposition 64")
santa.get_mad_at("Blitzen", "Rudolph")
santa.celebrate_birthday
puts @reindeer_ranking




# write new class - babies
# class Babies
# 	# write 2 instance methods
#   #potty
#   def potty(int)
#   	if int == 1
#   		puts "Looks like we've got a number 1!"
#   	else int == 2
#   		puts "Uh, oh. It's a stinker!"
#   	end
#  end

#   def sleep(bool)
#     if bool == true
#   	  puts "Then I can get some work done."
#     else 
#       puts "Then I'm changing diapers!"
#   	end
#   end
#   def initialize
# 	puts "-"*10
# 	puts "Initializng new Babies instance..."
# 	puts "-"*10
# end

# end
# #create loop to make 50 instances
# #create structure to store instances in
# instance_arr = []
# 50.times do | number |
#   marlo = Babies.new
#   instance_arr << Babies.new
#   p instance_arr
# end
# instance_arr.each do | inst_num |
#   inst_num.potty(1)
#   inst_num.sleep(true)
# end

#   # marlo.potty(1)
#   # marlo.sleep(true)
 # santas = []
 #  santas << Santa.new("agender", "black")
 #  santas << Santa.new("female", "Latino")
 #  santas << Santa.new("bigender", "white")
 #  santas << Santa.new("male", "Japanese")
 #  santas << Santa.new("female", "prefer not to say")
 #  santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
 #  santas << Santa.new("N/A", "N/A")
