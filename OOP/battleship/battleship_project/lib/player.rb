class Player

    def get_move

        print "enter a position with coordinates seperated with a space like '4 7'"

        user_input = gets.chomp

        return user_input.split(" ").map(&:to_i)
    end

end
