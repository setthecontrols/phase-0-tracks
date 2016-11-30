class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof!"*int
  end

end

puppy = Puppy.new
puppy.fetch("stuffed animal")
puppy.speak