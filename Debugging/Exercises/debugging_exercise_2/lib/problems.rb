# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"

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


def prime_factors(numPF)

    facts = [2] #2 will always be a prime.

    (1..numPF).each do |i| #Collects all of the prime factors from 1 to given number.
        if numPF % i == 0 && prime?(i)
            facts << i
        end
    end

    facts

end

def largest_prime_factor(numF)
    prime_factors(numF)[-1]#Return the last factor in the prime factor method. 
end

def unique_chars?(strU)

    returnHash = Hash.new(0)#Must be set to 0. Otherwise, it will fill with nil impeding enumerable method.

    strU.chars do |ele|
        returnHash[ele] += 1 #Counters each element and adds.
    end

    returnHash.each do |k,v|

        if v >= 2
            return false
        else
            next
        end
    end

    return true #Will only return true if the previous enumerable passes.

end


def dupe_indices(arrI)


end