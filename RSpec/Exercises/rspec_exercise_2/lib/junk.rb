VOWELS = "aeiou"

curse = ["darn", "heck"]
booty = ""

str = "What the HECK is up with that darn thing?"

whatup = str.split(" ").map do |ele|

    puts ele.downcase

    if curse[0..-1].include?(ele.downcase)
        booty = ele.chars.map do |let|

            if VOWELS.include?(let.downcase)
                let = "*"
            else
                let
            end

        end

        ele = booty.join("")
    else
        ele
    end
end
print whatup.join(" ")