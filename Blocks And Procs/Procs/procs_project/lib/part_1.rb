def my_map(arr, &prc)
    new_arr = []

    arr.each { |ele| new_arr << prc.call(ele) }

    new_arr
end

def my_select(arrS, &prc)
    new_arr = []

    arrS.each do |ele|

        if prc.call(ele) == true
            new_arr << ele
        end
        
    end
    
    new_arr
end 