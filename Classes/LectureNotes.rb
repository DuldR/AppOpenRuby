# class Cat

#     def initialize(name, color, age)
#         @name = name
#         @color = color
#         @age = age

#     end

#     #Getter Method
#     def name

#         @name
        
#     end


#     #Getter method
#     def age
        
#         @age

#     end

#     #setter method

#     def age=(number)

#         @age = number
#     end



# end

# class Cat
#     def initialize(name, color, age)
#         @name = name
#         @color = color
#         @age = age
#     end

#     def get_name
#         @name
#     end

# end

# cat_1 = Cat.new("Sennacy", "brown", 4)

# p cat_1.get_name

# class Car
#     NUM_WHEELS = 4
#     def initialize(color)
#         @color = color
#     end

#     def self.upgrade
#         NUM_WHEELS = 0
#     end

#     def num_wheels
#         NUM_WHEELS
#     end
# end

# car_1 = Car.new("black")

# p car_1.num_wheels

# Car.upgrade

# p car_1.num_wheels


class Dog

    def initialize(name)
        @name = name
    end

    #Bark is a class method
    def self.bark
        "woof"
    end

    def self.compare_dogs(dog1, dog2)
        if (dog1.name.length > dog2.name.length)
            return dog1.name
        else
            return dog2.name
        end
    end

    #yell_name is an isntance mtheod
    def yell_name
        @name.upcase + "!"
    end


    def greet
        self.yell_name + " says hi."
    end

    def name
        @name
    end

end

dog1 = Dog.new("SNoooooooooooooopy")
dog2 = Dog.new("Spot")

p Dog.compare_dogs(dog1, dog2)
