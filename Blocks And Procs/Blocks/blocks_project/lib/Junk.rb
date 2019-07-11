students = [
          { name: "Alice", grades: [60, 68] },
          { name: "Bob", grades: [20, 100] }
        ]


def average(arr)

    return arr.sum / arr.length
end


print students.any? { |stu| average(stu[:grades]) > 75 }