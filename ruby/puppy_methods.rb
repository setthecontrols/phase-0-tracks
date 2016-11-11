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

ollie = Puppy.new

ollie.fetch("ball")
ollie.speak(7)
ollie.roll_over
end