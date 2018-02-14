# This method hanbles inappropriate user input.
# This method validates that the input of letter from the user is a letter and not any other character.
# We did this to don't count inputs as wrong guesses if the user inputs numbers, symbols etc.
  def validate_input_letter(input)
    until !input.match(/[^a-z]/)
      puts "\nPlease return a valid letters from A to Z.\n"
      input = gets.chomp.downcase
    end
  end
