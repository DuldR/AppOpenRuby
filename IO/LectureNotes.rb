class PetHotel

    def initialize(name)

        @name = name
        @guests = []

    end

    def check_in(guest)

        @guests << guest
        
    end

end

class Cat
    def initialize(name)
        @name = name
    end
end

hotel = PetHotel.new("Animal Inn")

cat_1 = Cat.new("Sennacy")
cat_2 = Cat.new("Whiskers")

hotel.check_in(cat_1)
hotel.check_in(cat_2)

p hotel