str = "code never lies, comments sometimes do."

def alternating_case(strA)
    returnArr = []

    strA.split(" ").each_with_index do |ele, idx|

        if idx.even? == true
            returnArr << ele.upcase
        else
            returnArr << ele
        end

    end

    returnArr.join(" ")

end 

print alternating_case(str)
