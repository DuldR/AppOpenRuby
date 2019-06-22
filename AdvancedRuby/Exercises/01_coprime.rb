# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def prime?(num)
    if num < 2
        return false
    end


    (2...num).each do |i|
        if num % i == 0
            return false
        end
    end

    return true
end


def prime_factors(num)

    facts = []

    (1..num).each do |i|
        if num % i == 0 && prime?(i)
            facts << i
        end
    end

    return facts

end

def coprime?(num1, num2)

    fact1 = prime_factors(num1)
    fact2 = prime_factors(num2)

    if fact1.any? { |ele| fact2.include?(ele) }
        return true
    else
        return false
    end
    
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
