def my_map(arr, &prc)
    new_arr = []

    arr.each { |ele| new_arr << prc.call(ele) }

    new_arr
end

def my_select(arrS, &prc)
    new_arr = []

    arrS.each do |ele|

        if prc.call(ele) == true #If the call is true, fill the array.
            new_arr << ele
        end
        
    end
    
    new_arr
end 

def my_count(arrC, &prc)

    new_int = 0

    arrC.each do |ele|

        if prc.call(ele) == true 
            new_int += 1 #If the proc return is true, add.
        end

    end


    new_int

end

def my_any?(arrA, &prc)

    arrA.each do |ele|

        if prc.call(ele) == true
            return true
        end

    end

    return false
end

def my_all?(arrAll, &prc)

    arrAll.each do |ele|

        if prc.call(ele) == true
            next
        else
            return false
        end

    end

    return true

end
def my_none?(arrN, &prc)

    arrN.each do |ele|

        if prc.call(ele) == false
            next
        else
            return false
        end
    end

    return true
end