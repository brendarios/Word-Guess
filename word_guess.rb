# We color the program in certain messages and use features like blink and bold in them also.
require 'colorize'


puts "WELCOME TO DISNEY WORD GUESS"
puts "Words Theme: Walt Disney".colorize(:blue)

# one class contain different methods for the game
class WordGuess

  def initialize
    @words_low = %w[minnie mickey donald daisy pluto goofy alice olaf anna ariel]
    @words_medium = %w[tigger cinderella bambi pocahontas eeyor rabbit mulan belle dumbo]
    @words_high = %w[esmeralda quasimodo anastasia mowgli anastasia drizella kocoum maleficent]
    @letters_guessed = []
    @guesses_counter = 0
    selection_level
    @word = @word_array.sample
    @letters_correct = Array.new(@word.length, "_" )
    ascii_image
    letters_input
  end
