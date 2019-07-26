class Room

    #----Initialization----

    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

     #----Getter Methods----

     def capacity
        @capacity
     end

     def occupants
        @occupants
     end

      #----Instance Method----

    def full?
        if @occupants.length < @capacity
            return false
        else
            return true
        end
    end

    def available_space
        return (@capacity - @occupants.length)
    end

    def add_occupant(name)
        if self.full? == true
            return false
        else
            @occupants << name
            return true
        end

    end

    
end
