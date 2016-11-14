class WordGame

  def store_guess_word(word_string)
  	@guess_word = word_string
  end

  def generate_tries(@guess_word)
  	@tries_you_have = @guess_word.lenth * 1
  end
end



#     #ask user1 for name or say "give me a word, user1"
puts "Alright, lets play a game.  First tell me your name."
  player1 = gets.chomp
  # 	#take guess_word from user 1 
puts "OK, #{player1}, give me a word for another player to guess."
   @guess_word = gets.chomp.chars
   
  
#   create method that stores guess_word    
#     create string to hold guess_word in initialize
    
#     #ask user2 for name and say "you're guessing a word, one letter at a time.  
puts "Thanks #{player1}.  Now we'll have your buddy guess the word"
puts "Buddy, what's your name?"
  player2 = gets.chomp
puts "#{player2}, you're going to try and guess the word #{player1} gave us one letter at a time and you'll have #{tries_you_have} tries to do it."

puts "THAT'S IT FOR NOW"  
#     #print as many underscores as there are letters in guess_word and the 
#     # print "Give me a letter, fool! you'll have 3 times as many tries as there are letters"
#  create method that multiplies guess_word by 3
#   create method that evaluates true if try_count ==  guess_word.length * 3 and sets tries to that number


#   store guess_letter in initialize

#   create method that stores guess_letter if it's not already there
#     or else prints "letter already used.  try again" if it is there.
    


#   create method that iterates over guess_word comparing stored_letter
#     if guess_word contains stored_letter
#       print yes!
#         print hidden_word (underscores with any guessed letters)    
#           else 
#           	1 to try_count
#           	print no dice!
#           	print hidden_word

#   	 if it hasn't been stored
#       	if you iterate over the guess_word and the guess letter isn't in it, 
