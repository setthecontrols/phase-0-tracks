class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

ollie = Puppy.new

ollie.fetch("ball")