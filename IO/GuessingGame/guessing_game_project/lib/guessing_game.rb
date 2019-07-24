class GuessingGame

    def initialize(min, max)

        #Initiailizing the objects. We're saying that the class takes two arguments and setting those to an object. Likewise, the secret num, num attempts and game over are object, but are not fed by an argument.

        #Arguments being set to objects.
        @min = min
        @max = max

        #Non-arguments being set to objects.
        @secret_num = rand(@min..@max)
        @num_attempts = 0
        @game_over = false

    end

    #----Getter Methods----

    def num_attempts
        @num_attempts
    end

    def game_over?
        @game_over
    end

    #----Instance Methods-----

    def check_num(num)
        # No need for a while loop.

        @num_attempts += 1

        if num == @secret_num
            p "you win"
            return @game_over = true
        elsif num < @secret_num
            p "too small"
        elsif num > @secret_num
            p "too big"
        end

    end

    def ask_user
        p "enter a number"
        user_input = gets.chomp.to_i

        self.check_num(user_input)
    end

end
