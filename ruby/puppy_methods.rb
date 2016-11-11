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

ollie = Puppy.new

ollie.fetch("ball")
ollie.speak(7)
ollie.roll_over
ollie.dog_years(4)
ollie.sleep(3)
end
