require_relative "board"
require_relative "player"

class Battleship

    def initialize(n)

        @player = Player.new
        Board.new(n)
        @board = Board.new(n)
    
    end
end
