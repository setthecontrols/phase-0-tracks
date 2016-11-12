
module Flight
  def take_off(altitued)
  	puts "Taking off and ascending until reaching #{altitued}."
  end
end


class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)