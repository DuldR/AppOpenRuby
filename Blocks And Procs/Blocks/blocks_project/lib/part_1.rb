def select_even_nums(arr)
    return arr.select(&:even?)
end

def reject_puppies(arrR)
    arrR.reject { |dog| dog["age"] <= 2}
end

def count_positive_subarrays(arrCPS)
    arrCPS.count { |cps| cps.sum > 0 }
end

def aba_translate(strA)
    vowels = "aeiou"
    returnStr = strA.chars.map do |x|
        if vowels.include?(x) #If x is a value, modify it.
            x + "b" + x
        else
            x #If nto a vowel, return the value.
        end
    end

    return returnStr.join("")
end

def aba_array(arrAA)
    arrAA.map { |ele| aba_translate(ele)}
end 