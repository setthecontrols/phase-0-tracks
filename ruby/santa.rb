class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
  def initialize(gender,ethnicity)
    puts "-"*20
    puts "Initializing Santa instance..."
    puts "-"*20

    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
   
    santas = []
    santas << Santa.new("agender", "black")
    santas << Santa.new("female", "Latino")
    santas << Santa.new("bigender", "white")
    santas << Santa.new("male", "Japanese")
    santas << Santa.new("female", "prefer not to say")
    santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
    santas << Santa.new("N/A", "N/A")
  end
  # def print_santa
  #   p @gender
  #   p @ethnicity
  #   p @reindeer_ranking
  #   p @age
  # end
end

hoho = Santa.new("can't figure it out", "purple")
hoho.speak
hoho.eat_milk_and_cookies("Proposition 64")



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
