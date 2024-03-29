# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)
    vowels = ["a", "i", "e", "o", "u"]
    check = []



    words.each do |word|
        words.each do |word2|
            if vowels.all? { |ele| (word + " " + word2).include?(ele) } == true
                if check.include?(word2 + " " + word)
                    next
                else
                    check << word + " " + word2
                end
            end
        end
    end

    return check

    # THIS WAS BAD
    # returnHash = Hash.new()

    # words.each do |ele|
    #     returnHash[ele] = Hash.new(0)
    #     ele.chars.each do |ele2|
    #         if vowels.include?(ele2)
    #             returnHash[ele][ele2] += 1
    #         end
    #     end
    # end

    # hello = []

    # returnHash.keys.each do |ele|
    #     returnHash.keys.each do |ele2|
    #         checkHash = returnHash[ele].merge(returnHash[ele2])
    #         if vowels.all? { |v| checkHash.keys.include?(v) } == true
    #             hello << ele + " " + ele2
    #         end
    #     end
    # end

    # howLong = hello.length / 2

    # howLong.times { |i| hello.pop }

    # return hello
end


# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)

    check = (2...num).to_a
    check.any? { |ele| num % ele == 0 }
end


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)
    bigrams.select { |ele| str.include?(ele) }
end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc)

        # A ||= B is a conditional assignment.
        # If A is undefined or falsey, evaluate B and set A to the result.
        prc ||= Proc.new { |k,v| k == v }

        returnHash = Hash.new(0)

        #CALLS ON SELF CAUSE NO GIVEN ARGUMENT LOL.
        self.each do |k, v|
            if prc.call(k, v) == true
                returnHash[k] = v
            else
                next
            end
        end

        returnHash

    end
end

class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
        
    def substrings(length = nil)
        setupArr = []
        returnSub = []

        self.each_char.with_index do |e, idx|
            setupArr << self[idx..-1]
        end

        setupArr.each do |ele|
            n = 0
            ele.each_char.with_index do |l, i|
                returnSub << ele[0..n]
                n += 1
            end
        end

        if length == nil
            returnSub
        else
            returnSub.select { |words| words.length == length }
        end
    end



    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)
        alpha = ("a".."z").to_a

        returnArr = self.each_char.map do |let|
            shift = alpha.find_index(let) + num
            
            if shift > 25
                shift %= 26
            end

            let = alpha[shift]
        end

        returnArr.join("")
    end
end
