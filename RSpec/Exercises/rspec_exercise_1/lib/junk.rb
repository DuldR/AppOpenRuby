# VOWELS = "aeiouAEIOU"
# ALPHA = "abcdefghijklmnopqrstuvwxyz"
# NUMS = "0123456789"


# def caesar_cipher(str_m, num)

#     returnStr = ""


#     str_m.each_char do |let|


#         if ALPHA.include?(let)
            
#             found = ALPHA.index(let)
            
#             if num > 26
#                 while num % 26 > 26
#                     num /= 26
#                 end
#             end

#             print num

#             if (found + num) >= 26
#                 offset = ALPHA[found + num - 26]
#             else
#                 offset = ALPHA[found + num]
#             end

            

#             returnStr << offset
#         else
#             returnStr << let
#         end
        
#     end

#     return returnStr


# end

# print caesar_cipher("whoa", 52)






num = 52
while num > 26
    num -= 26
end

print num

