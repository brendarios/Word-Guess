
# This method will select the level of the game and according to the level, the program
# will select an arrays of words.
# The user will have 4 trials to enter a level. We did this to have an end of the program
# in case the user keeps entering the wrong level input.
  def selection_level

    levels = %w[low medium high]
    puts "Please enter a level: low, medium or high?"
    level = nil
    until level == "low" || level == "medium" || level == "high"
      level = gets.chomp.downcase
      if level == "low"
        @word_array = @words_low
      elsif level == "medium"
        @word_array = @words_medium
      elsif level == "high"
        @word_array = @words_high
      elsif level != "low" && level != "hard" && level != "medium"
        puts "Invalid level. Please enter again"
        level = gets.chomp.downcase
      end

      attempt = 0
      while !levels.include?(level)
        if attempt < 3
          attempt += 1
          puts "Please enter a valid level. You have #{(-attempt + 3) + 1} more attempts.\n"
          level = gets.chomp
        else
          puts "Too many attempts..start the program again"
          exit
        end
      end
    end

  end
