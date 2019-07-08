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


def ana_array(arrI, arrII)

    firstHash = Hash.new(0)
    secondHash = Hash.new(0)

    arrI.each do |ele| #Fills first comparison hash.
        firstHash[ele] += 1
    end

    arrII.each do |ele2| #Fills second comparison hash.
        secondHash[ele2] += 1
    end

    if firstHash == secondHash #Return true if same.
        return true
    else
        return false
    end

end

def double?(arr) #Checks to see if there are duplicate elements in the array.

    dHash = Hash.new(0)
    returnArr = []


    arr.each do |ele|

        dHash[ele] += 1
    end

    dHash.each do |k, v|
        if v >= 2
            returnArr << k
        else
            next
        end
    end

    returnArr #Returns array of duplicate elemtns. 

end

def dupe_indices(arrD)
    dupeHash = Hash.new(0)

    double?(arrD).each do |ele1| #Iterate through doubles if any.
        fillArr = []

        arrD.each_with_index do |ele2, idx|

            if ele1 == ele2
                fillArr << idx
            else
                next
            end

        end

        dupeHash[ele1] = fillArr
    end

    dupeHash

end