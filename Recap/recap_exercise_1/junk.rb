all_vowel_pairs = ["goat", "action", "tear", "impromptu", "tired", "europe"]
vowels = ["a", "i", "e", "o", "u"]

returnHash = Hash.new()

all_vowel_pairs.each do |ele|
    returnHash[ele] = Hash.new(0)
    ele.chars.each do |ele2|
        if vowels.include?(ele2)
            returnHash[ele][ele2] += 1
        end
    end
end

hello = []

returnHash.keys.each do |ele|
    returnHash.keys.each do |ele2|
        checkHash = returnHash[ele].merge(returnHash[ele2])
        if vowels.all? { |v| checkHash.keys.include?(v) } == true
            hello << ele + " " + ele2
        end
    end
end

howLong = hello.length / 2

howLong.times { |i| hello.pop }



