require_relative "room"

class Hotel
  

    #----Initialization----
    def initialize(name, rooms)
        @name = name

        #Sets each room NAME to a new room object.
        @rooms = rooms.each { |k, v| rooms[k] = Room.new(v) }

    end

    #----Getter----
    def rooms
        @rooms
    end

    def name
        #Split the string, capitalize and rejoin.
        @name = @name.split(" ").map { |ele| ele.capitalize }.join(" ")
    end

     #----Instance Method----

    def room_exists?(roomName)
        if @rooms.include?(roomName) == true
            return true
        else
            return false

        end
    end

    def check_in(person, roomName)

        if self.room_exists?(roomName) == true
            if @rooms[roomName].add_occupant(person) == true
                print "check in successful"
            else
                print "sorry, room is full"
            end
        else
            print "sorry, room does not exist"
        end
    end

    def has_vacancy?

        if @rooms.any? { |k,v| v.available_space > 0 } == true
            return true
        else
            return false
        end
 
    end

    def list_rooms
        @rooms.each do |k, v|
            print k + v.available_space.to_s
            print "\n"
        end
    end


end
