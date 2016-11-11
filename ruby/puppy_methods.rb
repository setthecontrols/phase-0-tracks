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

# create class
class Code
# class write 2 instance methods and an initialize method
def initialize
	puts "-"*10
	puts "Initializng new Code instance..."
	puts "-"*10
end

def failure
	puts "What'd I do wrong?"
end

def success
	puts "Woo hoo!  It worked!"
end
week6 = Code.new
week6.failure
week6.success
# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data structure.
# Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast
end