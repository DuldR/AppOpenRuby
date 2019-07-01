VOWELS = "aeiouAEIOU"
ALPHA = "abcdefghijklmnopqrstuvwxyz"
NUMS = "0123456789"

def hipsterfy(str)

    index = []

    VOWELS.split("").each do |ele|
        str.each_char.with_index do |char, idx|
            if char == ele
                index << idx
            else
                next
            end
        end
    end

    if index.empty? == true
        return str
    else
        str.slice!(index.sort[-1])
        return str
    end

end



def vowel_counts(str_v)

    strHash = Hash.new(0)

    str_v.chars.each do |let|
        if VOWELS.include?(let)
            strHash[let.downcase] += 1
        else
            next
        end
    end

    strHash

end

def caesar_cipher(str_m, num)

    returnStr = ""


    str_m.each_char do |let|


        if ALPHA.include?(let)

            found = ALPHA.index(let)

            if num > 26
                while num > 26
                    num -= 26
                end
            end

            if (found + num) >= 26
                offset = ALPHA[found + num - 26]
            else
                offset = ALPHA[found + num]
            end

            returnStr << offset
        else
            returnStr << let
        end
        
    end

    return returnStr


end

