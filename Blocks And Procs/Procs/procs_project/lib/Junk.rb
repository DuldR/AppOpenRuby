# def add_and_proc(num_1, num_2, &prc)

#     sum = num_1 + num_2
#     prc.call(sum)

# end

# p add_and_proc(2, 3) { |n| 2 * n }


# p [1, 2, 3].map { |num| num * 2 }


def my_map(arr, &prc)

    new_arr = []

    arr.each { |ele| new_arr << prc.call(ele) }
    new_arr
end

p my_map([1, 2 ,3]) { |num| num * 2 }
