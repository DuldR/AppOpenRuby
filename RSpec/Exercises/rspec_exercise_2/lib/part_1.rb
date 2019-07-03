VOWELS = "aeiou"

def partition(arr, num)

    grid = Array.new(2) { Array.new }

    arr.each do |ele|
        if ele < num
            grid[0] << ele
        else
            grid[1] << ele
        end
    end

    grid
end


def merge(hsh1, hsh2)
    returnHsh = Hash.new

    hsh1.each do |k, v|
        returnHsh[k] = v
    end

    hsh2.each do |k, v|
        returnHsh[k] = v
    end

    returnHsh
end

def censor(strC, curse)

    badWord = ""

    returnStr = strC.split(" ").map do |ele|

        if curse[0..-1].include?(ele.downcase) #Iterating through curse word possibilities.
            badWord = ele.chars.map do |let|

                if VOWELS.include?(let.downcase)#Must be downcase to check for all forms of curse word.
                    let = "*"
                else
                    let
                end

            end

            ele = badWord.join("") # If it's bad word. Censor the return ele.
        else
            ele
        end

    end

    returnStr.join(" ")
end

def power_of_two?(pNum)
    pNum != 0 && (pNum & (pNum - 1)) == 0
end