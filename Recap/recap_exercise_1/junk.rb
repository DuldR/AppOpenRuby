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

p most_frequent_bigram("gotothemoonsoonforproof")