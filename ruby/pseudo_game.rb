# BUSINESS LOGIC

# Release 1: Design a Game

# USER INTERFACE
##  One user can enter a word and another user attempts to guess the word.
## create a class for word guessing game 
## take a word as input from user
## give another user tries that are 3 x the length of the word to guess
## limit guesses
## keep track of guesses and do not increment guess count if the guess is a duplicate guess
## give user continual feedback on the current state of the word. e.g. unicorn displays: "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" 
  ##after the user enters a guess of "c".  ( if letter guess == secret word.index(guess_letter))
## The user should get a congratulatory message if they win, and a taunting message if they lose.
TEST