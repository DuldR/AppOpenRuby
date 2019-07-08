arr = ["a", "a", "c", "c", "b", "c"]

def double?(arr)

    butts = Hash.new(0)
    returnArr = []


    arr.each do |ele|

        butts[ele] += 1
    end

    butts.each do |k, v|
        if v >= 2
            returnArr << k
        else
            next
        end
    end

    returnArr

end

anus = Hash.new(0)


double?(arr).each do |ele2|
    fillArr = []

    arr.each_with_index do |ele3, idx|

        if ele3 == ele2
            fillArr << idx
        else
            next
        end
    end

    anus[ele2] = fillArr

end

print anus