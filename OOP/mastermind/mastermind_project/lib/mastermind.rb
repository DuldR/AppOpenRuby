require_relative "code"

class Mastermind

    def initialize(number)
        @secret_code = Code.random(number)
    end

    def print_matches(check)
        p @secret_code.num_exact_matches(check)
        p @secret_code.num_near_matches(check)
    end

    def ask_user_for_guess

        p "Enter a code"
        user_input = gets.chomp

        userGuess = Code.from_string(user_input)

        print_matches(userGuess)

        @secret_code == userGuess

    end



end
