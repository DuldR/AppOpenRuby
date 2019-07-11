def all_words_capitalized?(arrW)

    arrW.all? { |word| word == word.capitalize}

end

# This code did not satisfy rspec but still gave the correct results. Rspec was looking for a specific method being used upon the array passed in.
# def no_valid_url?(arrU)
#     urls = [".com", ".net", ".org", ".io"]

#     arrU.each do |ele|
#         if urls.none? { |url| ele.include?(url) }
#             next
#         else
#             return false
#         end
#     end

#     return true

# end 

def no_valid_url?(arrU)
    nurls = [".com", ".net", ".org", ".io"] #Checksum URLs

    nurls.each do |ele| #Iterate through check URLS
        if arrU.none? { |url| url.include?(ele) } #Verifies that the array element includes check url.
            next
        else
            return false
        end
    end


    return true

    # Official Method
    # urls.none? do |url|
    # nurls.any?{ |ending| end_with?(ending) }

end 

def average(arrR) #To return the average. 
    return arrR.sum / arrR.length
end


def any_passing_students?(arrS)
    arrS.any? { |stu| average(stu[:grades]) > 75 } #Calls the average function on the grade and compares to 75.
end 

