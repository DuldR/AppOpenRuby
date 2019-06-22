a = [1, 2, 3]
b = [6, 6, 3]

print b.any? { |e| a.include?(e)}

