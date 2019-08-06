require_relative "board"
require_relative "player"

class Battleship

    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = (@board.size / 2)
    end

    def start_game
        @board.place_random_ships
        p @board.num_ships 
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            p "you lose"
            return true
        else
            return false
        end
    end

    def win?

        if @board.num_ships == 0
            p "you win"
            return true
        else
            return false
        end
    end

    def game_over?
       if lose? || win? == true
        return true
       else
        return false
       end
    end

    def turn

        # Repeats yourself. DRY, cmon son.
        # if @board.attack(@player.get_move) == true
        #     @board.print
        #     p @remaining_misses
        # else
        #     @remaining_misses -= 1
        #     @board.print
        #     p @remaining_misses
        # end

        #Alvins - ONLY check for the false condition. Much cleaner.
        if @board.attack(@player.get_move) == false
            @remaining_misses -= 1
        end
        
        @board.print
        p @remaining_misses
    end
    
end
