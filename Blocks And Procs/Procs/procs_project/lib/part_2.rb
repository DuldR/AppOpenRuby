def reverser(strR, &prc)

    prc.call(strR.reverse) #Modify the string FIRST before calling a proc.

end

def word_changer(strW, &prc)

    returnB = strW.split(" ").map { |ele| prc.call(ele) } #Splits the string an array and calls the proc on each element.

    returnB.join(" ") 

end

def greater_proc_value(num, proc_1, proc_2)

    if proc_1.call(num) > proc_2.call(num)
        return proc_1.call(num)
    else
        return proc_2.call(num)
    end

end

def and_selector(arrS, proc_1, proc_2)
    new_array = []

    arrS.each do |ele|

        if proc_1.call(ele) == true && proc_2.call(ele) == true #If both proc calls return true. Fill the array.
            new_array << ele
        else
            next
        end

    end

    new_array
end

def alternating_mapper(arrM, proc_1, proc_2)

    new_array = []

    arrM.each_with_index do |ele, idx|

        if idx.even? == true || idx == 0
            new_array << proc_1.call(ele)
        else
            new_array << proc_2.call(ele)
        end

    end

    new_array


end
