str = "cats"

anus = str.chars.inject do |result, ele|
    result + ele
end

p anus
