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