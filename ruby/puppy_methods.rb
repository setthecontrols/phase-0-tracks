class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof! "*int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    puts int*7
  end

  def use_toilett(int)
    if int == 1
      puts "If it's yellow, let it mellow."
    elsif int == 2
      puts "if it's brown, flush it down."
    else 
      puts "I'm not familiar with that one."
    end
  end

end

puppy = Puppy.new
puppy.fetch("stuffed animal")
puppy.speak(8)
puppy.roll_over
puppy.dog_years(4)
puppy.use_toilett(5)