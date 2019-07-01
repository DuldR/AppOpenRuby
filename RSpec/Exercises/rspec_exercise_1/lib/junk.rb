def junk(str)

    vowels = "aeiou"
    index = []


    vowels.split("").each do |ele|
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


print junk("Weiner")