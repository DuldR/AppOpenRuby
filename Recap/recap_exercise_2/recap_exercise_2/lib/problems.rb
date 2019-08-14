# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers

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


def least_common_multiple(num_1, num_2)
    gcdVal = 0
    lcmVal = 0


    fact1 = prime_factors(num_1).sort
    fact2 = prime_factors(num_2).sort

    fact1.each do |ele|
        if fact2.include?(ele) == true
            gcdVal = ele
            break
        end
    end

    return (num_1 * num_2) / gcdVal


end



# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    
    arr = []
    count = [0]


    str.each_char.with_index do |ele, idx|
        if idx == str.length - 1
            next
        else
            if arr.include?(ele + str[idx + 1])
                next
            else
                arr << ele + str[idx + 1]
            end
        end
    end

    arr.each do |ele|
        if str.count(ele) > count[0]
            count[0] = str.count(ele)
            count[1] = ele
        else
            next
        end
    end

    return count[1]

end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse

        returnHash = Hash.new(0)

        self.each do |k,v|
            returnHash[v] = k
        end

        return returnHash

    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = []

        self.each do |ele1|
            self.each do |ele2|
                if count.include?([ele2, ele1])
                    next
                else
                    if (ele1 + ele2) == bar
                        count << [ele1, ele2]
                    else
                        next
                    end
                end
            end
        end

        count.length

    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
        prc ||= Proc.new { |data| data.sort }
        prc.call(self)
        
        sorted = false

        while !sorted
            sorted = true
            (0...self.length - 1).each do |i|
                if self[i] > self[i + 1]
                    self[i], self[i + 1] = self[i + 1], self[i]
                    sorted = false
                end
            end
        end

        return self

    end
end
