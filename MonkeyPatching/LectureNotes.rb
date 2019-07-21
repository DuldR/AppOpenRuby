# class String

#     def upcase?
#         self.upcase == self
#     end

# end




# p "hello".upcase? #false
# p "HELLO".upcase? #true

# class Integer
#     def prime?

#         return false if self < 2

#         (2...self).each do |factor|
#             if self % factor == 0
#                 return false
#             end
#         end

#         return true
#     end
# end

# p 7.prime?

class Array

    def has_zero?
        self.include?(0)
    end 

end


p [4, 3, 2, 1, "hello", 0].has_zero? #true

p [3, 2, 1, "hello"].has_zero? #true
