# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + " with a smile on my face!!!!!!!!!!!!!!"
#   end
# end

# Shout.yell_angrily("it took me 8 hours to finish 6.4")
# Shout.yell_happily("it took me 8 hours to finish 6.4")

module Shout
  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yell_happily(words)
  	p words + " with a smile on my face!!!!!!!!!!!!!!"
  end
end

class Family 
  include Shout
end

class Friends
  include Shout
end

thanksgiving = Family.new
thanksgiving.yell_happily("Touchdown")
thanksgiving.yell_angrily("your candidate is the worst steaming pile of inhumanity I've ever encountered")

bar = Friends.new
bar.yell_angrily("What do you mean, my card's declined??")
bar.yell_happily("Woo hoo")

