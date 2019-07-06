butts = Hash.new(0)
str = "hentai"

str.chars do |ele|
    butts[ele] += 1
end


butts.each do |k,v|

    if v >= 2
        print k
    else
        next
    end

end