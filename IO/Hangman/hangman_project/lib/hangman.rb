class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  #----Class Method----

  def self.random_word
    return DICTIONARY.sample
  end

  #----Initialization----

  def initialize

    #Sets an instance variable secret_word by calling the class method "random_word". You must be explicit with the "Hangman" call to relate the class to the method call.
    @secret_word = Hangman.random_word

    @guess_word = Array.new(@secret_word.length).fill("_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  
  end

  #----Getter Methods----

  def guess_word
    @guess_word
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def attempted_chars
    @attempted_chars
  end

  #----Instance Methods----

  #!!!!Part 1!!!!

  def already_attempted?(char)

    if @attempted_chars.include?(char) == true
      return true 
    else
      return false
    end

  end

  def get_matching_indices(char)

    #Breaks the word down into an array and returns the index of the given char. Compact deletes all nil values filled by the map method.

    returnArr = @secret_word.chars.map.with_index do |ele, idx|
      if ele == char
        idx
      else
        next
      end
    end

    return returnArr.compact

  end

  def fill_indices(char, arr)

    arr.each do |ele|
      @guess_word[ele] = char
    end

  end

  #!!!!Part 2!!!!

  def try_guess(char)

    if already_attempted?(char) == true

      p "that has already been attempted"
      return false

    else

      @attempted_chars << char

      if get_matching_indices(char) == []
        @remaining_incorrect_guesses -= 1
      else
        fill_indices(char, get_matching_indices(char))
      end

      return true
    end
  end

  def ask_user_for_guess
    p "Enter a char:"
    user_input = gets.chomp

    return try_guess(user_input)
  end

  def win?
    if @guess_word.join("") == @secret_word
      p "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      p "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if win? == true || lose? == true
      p @secret_word
      return true
    elsif win? == false && lose? == false
      return false
    end
  end


end
