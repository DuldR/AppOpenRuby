def scalar_multiple!(array, multiplier)
    array.map! { |el| el * multiplier }
end


array_1 = [7, 0, 4]
p array_1.object_id                             # => 70326264380840
result_1 = scalar_multiple!(array_1, 3)
p result_1                                      # => [21, 0, 12]
p result_1.object_id                            # => 70326264380840


array_2 = [90, 30, 4, 12]
p array_2.object_id                             # => 70326264378100
result_2 = scalar_multiple!(array_2, 0.5)
p result_2                                      # => [45.0, 15.0, 2.0, 6.0]
p result_2.object_id             