
# module Flight
#   def take_off(altitued)
#   	puts "Taking off and ascending until reaching #{altitued}."
#   end
# end


class Bird

  module Flight
    def take_off(altitued)
	  puts "Taking off and ascending until reaching #{altitued}."
	end
  end
end

class Plane

  module Flight
    def take_off(altitued)
	  puts "Taking off and ascending until reaching #{altitued}."
	end
  end
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

