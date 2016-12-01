module Shout 

  def yell_angrily(words)
    words + "!!!!" + " :("
  end
  
  def yelling_happily(words)
    words + " in a really happy way!!!!"
  end

end


class Monkeys
  include Shout
end

class Cockatoo
  include Shout

end



mono = Monkeys.new
puts mono.yell_angrily("in monkey:  why am I in this f*cking cage???")
puts mono.yelling_happily("in monkey:  I guess the danger of being eating has gone down by, like 100%")

c_too = Cockatoo.new
puts c_too.yell_angrily("in cockatoo:  why am I in this f*cking cage???")
puts c_too.yelling_happily("in cockatoo:  I guess the danger of being eating has gone down by, like 100%")







# module Shout 

#   def self.yell_angrily(words)
#     words + "!!!!" + " :("
#   end
  
#   def self.yelling_happily(words)
#     words + " in a really happy way!!!!"
#   end

# end

# puts Shout.yell_angrily("angry things")
# puts Shout.yelling_happily("super happy stuff")