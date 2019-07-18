class Bootcamp

    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, k| hash[k] = [] }
    end

    # --------- Part 1 -------- #

    #Getter methods on all of the main instance variables.
    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    #Instance Method
    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student) #Calls the enroll method. If the student array is filled to capacity, return false. Otherwise add the student to the enrollment.
        if @students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end

    def enrolled?(student) #Is the student in the students array?
        return @students.include?(student)
    end 

    # --------- Part 2 -------- #

    def student_to_teacher_ratio #Takes ratio fo students to teachers and rounds to nearest integer
        ratio = @students.length / @teachers.length 
        return ratio.round
    end

    def add_grade(student, grade) # If enrolled returns true, add that student's grade to his hash and return true.

        if self.enrolled?(student) == true 
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        return @grades[student].length 
    end

    def average_grade(student) #Return the students grade average.

        if self.enrolled?(student) == false || @grades[student] == []
            return nil
        else
            average = @grades[student].sum / @grades[student].length
            return average.round
        end

    end
end
