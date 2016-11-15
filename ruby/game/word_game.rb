

# instructions
# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.




# - Initilize class with 4 methods
#     - First method will initialize the values.
#         -Sets up variables with the word, word but split up, and secret word that is word with every letter replaced with _
#     - Second method will check if guess is correct
#         -If they secret word contains the guess, dont count the guess
#     - Third method will check guess. 
#         -If word is equal to secret word then player won and congratulate
#         -If word is not equal and guess count is equal to word length, then player lost. Send them loser taunt
#     - Fourth method will print each secret word character with a space following
# - Write driver code to ask player 1 for a word, then ask player 2 to start guessing. Will run until game over is true


class WordGame
	attr_accessor :word, :split_word, :hidden_word, :guess_count, :game_over

	def initialize(word)
	  @word = word
	  @split_word = word.split("")
	  @hidden_word = word.split("")
	  @hidden_word.map! { |x | x = "?" }
	  @guess_count = 0
	  @game_over = false
	end

	def guess(letter)
		if word.include? (letter)
		i = 0
		while i < word.length
			if hidden_word[i] == letter
				puts "you've already guessed #{letter}!"
				@guess_count -= 1
          elsif split_word[i] == letter
          	puts "good guess!"
          	hidden_word[i] = letter          	
      end
		i += 1
		end
		end

  @guess_count += 1 
	end

  def check_guess_count
  	puts "#{guess_count} is the number of tries used."
  	if word == hidden_word.join("")
  		@game_over = true
  		puts "The hidden word was, #{word} and you guessed it!"
  	    elsif @guess_count == word.length
  	    	@game_over = true
  	    	puts "Your tries are up and you totally suck!!"
  	    	  else @game_over = false
  	end

  end

  def print_hidden_word
  	hidden_word.each {| l | print l + " "}
  	puts 
  end

end


puts "Hello there.  What's you're name?"
name = gets.chomp
puts "OK, #{name}.  Gime me a word and I'm going to have your buddy here try and guess it"
word = gets.chomp
game = WordGame.new(word)

puts "Hellow, buddy.  What's your name?"
name2 = gets.chomp
puts "OK, #{name2}.  Try to guess the word #{name} gave me one letter at a time."  
puts "The letters of the word have been replaced with question marks below, but the actual letters will be revealed as you guess the correct ones.  You'll have as many tries as there are question mark here:"
  
  until game.game_over == true
  game.print_hidden_word
  puts  "Give me a letter."
  letter = gets.chomp
  game.guess(letter)
  game.check_guess_count

end






#Trashed 3rd or 6th version.  Hard to keep count
# class WordGame
# 	attr_accessor :guess_word, :tries_you_have, :hidden_word, :guess_letter

#   def initialize
# 	@guess_word = []
# 	@hidden_word = ""
# 	@tries_you_have = ""
# 	@guess_letter = []
# 	@guessed_word = []
#   end	

# #   def store_guess_word(word_string)
# #   	@guess_word = word_string
# #   end

#   def hidden_word(guess_word)
#   	@hidden_word = "?"*@guess_word.length
#   	  # puts "Here is the word for you to guess.  It's hidden now, but you will see letters in the word revealed as you guess correct ones."
#   end

#   def is_letter_good?(guess_word,guess_letter)
#   	mask = ["?"]
# 	i = 0 
# 	while i < @guess_word.length
# 	  if @guess_word[i] == @guess_letter[0]
# 	  	p "working??"
# 	    @guessed_word << @guess_letter[0]
# 	      else
# 	        @guessed_word << mask[0]
# 	    end
# 	  i += 1
#     end
#     # if @guessed_word != hidden_word
#     # 	puts "No go!  Try again"
#     p @guessed_word
#   end
#   # is_letter_good?(guess_word,guess_letter) 	

# end








# #-------------------DRIVER CODE
# #     #ask user1 for name or say "give me a word, user1"
# puts "Alright, lets play a game.  First tell me your name."
#   player1 = gets.chomp
#   # 	#take guess_word from user 1 
# puts "OK, #{player1}, give me a word for another player to guess."
#    game.guess_word = gets.chomp.chars
#    game.tries_you_have = game.guess_word.length * 1
  
#    game = WordGame.new


# #   create method that stores guess_word    
# #     create string to hold guess_word in initialize
    
# #     #ask user2 for name and say "you're guessing a word, one letter at a time.  
# puts "Thanks #{player1}.  Now we'll have your buddy guess the word"
# puts "Buddy, what's your name?"
#   player2 = gets.chomp
# puts "#{player2}, you're going to try and guess the word #{player1} gave us one letter at a time and you'll have #{game.tries_you_have} tries to do it."

# #     #print as many underscores as there are letters in guess_word and the
# # take the lenghth of guess_word, multiply that times undercore, save that in in array to print underscores.  
# puts "Here is the word for you to guess.  It's hidden now, but you will see letters in the word revealed as you guess correct ones."
# p game.hidden_word(game.guess_word)
# puts  "You'll have #{game.tries_you_have} tries to guess the word."
# #     # print "Give me a letter, fool! you'll have 3 times as many tries as there are letters"
# puts "Gimme a letter and make it good!"
# guess_letter = gets.chomp
# game.is_letter_good?(@guess_word,guess_letter)

# puts "_______THAT'S IT FOR NOW_____________"  
# #   create method that evaluates true if try_count ==  guess_word.length * 3 and sets tries to that number


# #   store guess_letter in initialize

# #   create method that stores guess_letter if it's not already there
# #     or else prints "letter already used.  try again" if it is there.
    


# #   create method that iterates over guess_word comparing stored_letter
# #     if guess_word contains stored_letter
# #       print yes!
# #         print hidden_word (underscores with any guessed letters)    
# #           else 
# #           	1 to try_count
# #           	print no dice!
# #           	print hidden_word

# #   	 if it hasn't been stored
# #       	if you iterate over the guess_word and the guess letter isn't in it, 
