module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + " with a smile on my face!!!!!!!!!!!!!!"
  end
end

Shout.yell_angrily("it took me 8 hours to finish 6.4")
Shout.yell_happily("it took me 8 hours to finish 6.4")