s1 = {
      "CEO"=>5000,
      "CTO"=>4200,
      "Software Engineer"=>3000,
      "Junior Developer"=>2400
    }

  
s2 = {
      "CEO"=>4800,
      "CTO"=>3800,
      "Pilot"=>2500
    }


s2.each do |k, v|
    if s1.include?(k)
        next
    else
        s1[k] = v
    end
end

p s1

