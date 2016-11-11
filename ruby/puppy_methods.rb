class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

 def speak(int)
  i = 0
  while i < int
  	puts "Woof!"
  	i += 1
  end
end

def roll_over
	puts "*rolls over*"
end

def dog_years(int)
p int*7
end

def sleep(int)
	puts "Wake me up in #{int} hours.  It's nap time!"
end

def initialize
	puts "-"*10
	puts "Initializng new Puppy instance..."
	puts "-"*10
end

ollie = Puppy.new

ollie.fetch("ball")
ollie.speak(7)
ollie.roll_over
ollie.dog_years(4)
ollie.sleep(3)
end

# write new class - babies
class Babies
	# write 2 instance methods
  #potty
  def potty(int)
  	if int == 1
  		puts "Looks like we've got a number 1!"
  	else int == 2
  		puts "Uh, oh. It's a stinker!"
  	end
 end

  def sleep(bool)
    if bool == true
  	  puts "Then I can get some work done."
    else 
      puts "Then I'm changing diapers!"
  	end
  end
  def initialize
	puts "-"*10
	puts "Initializng new Babies instance..."
	puts "-"*10
end

end
#create loop to make 50 instances
#create structure to store instances in
instance_arr = []
50.times do | number |
  marlo = Babies.new
  instance_arr << Babies.new
  p instance_arr
end
instance_arr.each do | inst_num |
  inst_num.potty(1)
  inst_num.sleep(true)
end

  # marlo.potty(1)
  # marlo.sleep(true)




#iterate over structure to call methods on instance

