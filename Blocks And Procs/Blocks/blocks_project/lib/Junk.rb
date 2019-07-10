 dogs = [
        {"name"=>"Fido", "age"=>3},
        {"name"=>"Spot", "age"=>2},
        {"name"=>"Rex", "age"=>5},
        {"name"=>"Gizmo", "age"=>1}
      ] 



# dogs.each do |dog|
#     dog.each do |k, v|
#         if k == "age"
#             if v > 2
#                 print "yes!"
#                 return true
#             end
#         end
#     end
# end

def butts(hash)

    if hash["age"] > 2
        return true
    else
        return false
    end

end

dogs[1].reject(&:butts)