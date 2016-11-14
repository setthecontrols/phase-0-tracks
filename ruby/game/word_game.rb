
# create WordGame class

class WordGame
	attr_accessor :word_string, 
 
  def intialize 
    # store stored_letter in initialize = nil
    @stored_letter = []
    # store guess_letter in initialize = guess_letter
    guess_letter = []
    # create string to hold guess_word in initialize
    guess_word = []
    try_count = 0 
    look these up:  guess_word.chars.each_with_index to ______underscores somehow
  end
  
  def store_guess_word(guess_word)
  	guess_word = word_string
  end

end



# what does this do?



#     #ask user1 for name or say "give me a word, user1"
puts "Alright, lets play a game.  First tell me your name."
  player1 = gets.chomp
puts "OK, #{player1}, give me a word for another player to guess."
   word_string = gets.chomp.chars
   
# 	#take guess_word from user 1 
  
#   create method that stores guess_word    
#     create string to hold guess_word in initialize
    
#     #ask user2 for name and say "you're guessing a word, one letter at a time.  
#     #print as many underscores as there are letters in guess_word and the 
#     # print "Give me a letter, fool! you'll have 3 times as many tries as there are letters"
 
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
             
             


 






















__________________________________________________________________________________________________________________________________________________________________________________________
#first try at pseudocode
# Release 1: Design a Game

# BUSINESS LOGIC

## create a class for word guessing game 
class WordGame
## initialize 
  def initialize
  	guess_word = []

  end

## store guess_word
## stroe guess_letter
## strore numbers of tries and limit tries to 3 x the length of the word to guess
## keep track of guesses and do not increment guess count if the guess is a duplicate guess
## 


# USER INTERFACE

## One user can enter a word 
## another user attempts to guess the word 1 letter at a time
## display as many underscores as there are letters before the first guess_letter is picked
## display the underscores with any correctly guessed letters after each guess
  ## e.g. unicorn displays: "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after letter_guess "c"
    
## The user should get a congratulatory message if they win, and a taunting message if they lose.

# TEST CODE




































