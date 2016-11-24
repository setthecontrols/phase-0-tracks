# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# "zom".insert(2, "o")
# => “zoom”

puts "enhance".center(20)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects")
#=> "the usual suspects"

puts " suspects".prepend("the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice!(0)
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

puts "z".codepoints
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII code for "z".

puts "How many times does the letter 'a' appear in this string?".count "a"
# => 4

# returns:

# phase-0-tracks :> ruby ruby/method_detective.rb 
# InVeStIgAtIoN
#       enhance       
# STOP! YOU’RE UNDER ARREST!
# the usual suspects
# the usual suspects
# The case of the disappearing last lette
# T
# Elementary, my dear Watson!
# 122
# 4
