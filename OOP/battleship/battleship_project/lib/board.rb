class Board

    attr_reader :size

    def self.print_grid(tGrid)

        tGrid.each do |ele|
            ele.each do |ele2|
                if ele2 == ele[-1]
                    print ele2
                else
                    print ele2.to_s + " "
                end
            end
            print "\n"
        end


    end

    def initialize(n)

        @grid = Array.new(n) { Array.new(n, :N) }
        @size = @grid.flatten.length
    end

    def [](position) #Finds position
        pRow = position[0]
        pColumn = position[1]

        @grid[pRow][pColumn]
    end

    def []=(sPos, val) #Sets position
        pRos = sPos[0]
        pColumn = sPos[1]
        @grid[pRos][pColumn] = val
    end

    def num_ships
        @grid.flatten.count(:S)
    end

    #----Part 2----

    def attack(aPos)

        #This is calling on an INSTANCE of board. Therefore, it can utilize the [] and []= methods.
        if self[aPos] == :S
            self[aPos]= :H
            p "you sunk my battleship!"
            return true
        else
            self[aPos] = :X
            return false
        end
     
    end

    def place_random_ships
        randShips = (@size * 0.25)
        rAmount = (Integer.sqrt(@size))

        while self.num_ships < randShips
            self[[rand(rAmount), rand(rAmount)]] = :S
        end
            
        # This didnt work, lol.
        # randShips.to_i.times { self[[rand(rAmount), rand(rAmount)]] = :S }
             
    end

    def hidden_ships_grid

        hGrid = @grid.map do |ele|
            ele.map do |ele2|
                if ele2 == :S
                    ele2 = :N
                else
                    ele2
                end
            end
        end

        return hGrid

    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(hidden_ships_grid)
    end

end