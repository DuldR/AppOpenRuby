class Dog

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    #Getter method
    def age
        @age
    end

    #Setter Method
    def age=(number)
        @age = number
    end

    def bark #Class method - If the age is greater than 3 return the class upcase.
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_foods # Getter method.
        @favorite_foods
    end

    def favorite_food?(str) #Checks for fave food in the class array.

        if @favorite_foods.include?(str.capitalize)
            return true
        end

        return false
    end

end
