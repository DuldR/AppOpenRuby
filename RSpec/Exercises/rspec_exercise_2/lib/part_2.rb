def palindrome?(strP)
    arrR = []

    strP.chars.each do |ele| #Creates the reverse.
        arrR.unshift(ele)
    end

    if arrR.join("") == strP #Checks for palindrome.
        return true
    else
        return false
    end
end

def substrings(strS)
    stageArr = []
    returnArr = []

    strS.split("").each_with_index do |ele, idx| #Stages the string so that starting from 0 is consistent over every element.
        stageArr << strS[idx..-1]
    end

    stageArr.each do |ele1| 
        ele1.chars.each_with_index do |let, idx1|
            returnArr << ele1[0..idx1] #Start at 0 from the element and fill the return array from 0 to the index. Index increase each pass through giving more of the needed string.
        end
    end

    returnArr
end

def palindrome_substrings(strPs)
    palArr = []

    substrings(strPs).each do |ele2|
        if ele2.length == 1 #If a single letter, skip.
            next
        else
            if palindrome?(ele2) == true #If palindrome, add.
                palArr << ele2
            else
                next
            end
        end
    end

    palArr
end


