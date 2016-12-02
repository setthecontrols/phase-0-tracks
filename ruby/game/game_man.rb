# get input word from user 1
#     store word
#     mask word
#     set number of tries
#   explain rules to user 2
#   tell user how many turns they have left 
#   get letter from user
#     store letter
#     iterate over guessed letters to see if user has already guessed the letter provided
#     iterate over user 1 word provide feedback if user guessed right or wrong 
#     keep track of number of tries
#   check to see if number of tries == 0 or if user has guessed word correctly
  
  
  


class GameMan

  attr_reader :turn_count, :masked_word, :game_over

  def initialize(word)
    @game_word = word
    @temp_masked_word = @game_word.split("")
    @temp_masked_word = @temp_masked_word.map! { |l| l = "*" }
    @masked_word = @temp_masked_word.join
    @guessed_letters = ""
    @game_over = false
    @turn_count = @game_word.length
  end

  def letter_in_word?(letter)
    @turn_count -=1
    if @guessed_letters == nil
    elsif @guessed_letters.include?(letter)
      puts "You've already guessed '#{letter}'! Try again."
      @turn_count +=1
      #return
    elsif @game_word.include?(letter)
      puts "Good guess!"
    else 
      puts "Sorry, that's not in the word."
    end
    if @game_word.include?(letter) 
      track_guessed_letters(letter)
      update_masked_word(letter)
    end
  end
  
  def update_masked_word(letter)
    @game_word.length.times do |i|
      if @game_word[i] == letter
        @masked_word[i] = letter
      end
    end
  end
  
  def print_turns_left
    puts "You have #{@turn_count} turns."
  end
  
  def print_masked_word
    puts "your word:  #{@masked_word}"
  end

  def track_guessed_letters(letter)
    @guessed_letters << letter
  end

  def is_game_over?
    if @game_word == @masked_word
      @game_over = true
      puts "You guessed the word in #{@game_word.length - @turn_count} tries!  Nice job."
    elsif @turn_count == 0  
        @game_over = true
        puts "Wow.  Your mom was not lying when she said you were stupid!!"
        puts "The word was #{@game_word}.  So sorry.  Try another time. "
    # else
    end
  end

end

puts "Hi user 1.  Give me a word"
word = gets.chomp.downcase
game = GameMan.new(word)
puts "Alright, now we're going to have user 2 try to guess what word you gave me 1 letter at a time."
puts "User 2, this is basically hangman."
puts "There are #{game.turn_count} letters in the word you're guessing and that's how many tries you have."
puts "I'll show you the hidden word with * instead of letters.  When you guess a correct letter, it will"
puts "revealed to you.  This is what your word looks like now:  #{game.masked_word}"
puts "OK, give me a letter"
until game.game_over == true
   game.print_turns_left
   game.letter_in_word?(letter = gets.chomp.downcase)
   game.print_masked_word
   game.is_game_over?
end  





# game = GameMan.new("people")
# game.print_turns_left
# game.letter_in_word?("p")
# game.print_masked_word
# game.print_turns_left
# game.letter_in_word?("p")
# game.print_masked_word
# game.print_turns_left
# game.letter_in_word?("o")
# game.print_masked_word




# class GameMan

#   def initialize(word)
#     @game_word = word
#     @temp_masked_word = @game_word.split("")
#     @temp_masked_word = @temp_masked_word.map! { |l| l = "?" }
#     @masked_word = @temp_masked_word.join
#     @guessed_letters = []
#     @game_over = false
#     @turn_count = @game_word.length
#     puts "initialization working"
#   end
 #** SCRAPPED METHOD, WHICH WAS DOING TOO MUCH AND WAS WRONG APPROACH FOR DETERMINING IF A GUESSED LETTER WAS IN THE WORD TO GUESS.
#   def letter_in_word(letter)
#     @turn_count -= 1
#     @game_word.length.times do | i | 
#       if @guessed_letters.include?(letter)
#         puts "You already guessed #{letter}!  Try again." 
#         @turn_count +=1
#         break
#       elsif @game_word.include?(letter)
#         puts "Good guess!"
#         @masked_word[i] = @game_word[i]
#       else
#           puts "Oooh, sorry.  No go."
#       end
#     end
#     track_guessed_letters(letter) 
#   end

#   def print_turns_left
#     puts "You have #{@turn_count} turns."
#   end
  
#   def print_masked_word
#     puts @masked_word
#   end

#   def masked_word
#     masked_word = @masked_word
#   end

#   def track_guessed_letters(letter)
#     @guessed_letters << letter
#   end

# end

# game = GameMan.new("hippocampus")
# game.letter_in_word("p")
# game.letter_in_word("p")
# game.letter_in_word("x")

