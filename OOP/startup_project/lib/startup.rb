require "employee"

class Startup

    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        if @salaries.include?(title) == true
            return true
        else
            return false
        end
    end

    #----Class Method----

    def >(start) #Calling self refers back to the initial class.
        if self.funding > start.funding
            return true
        else
            return false
        end
    end

    #----Instance Method----

    def hire(employee, title)
        if @salaries.include?(title) == true
            @employees << Employee.new(employee, title)
        else
            #Raises an error. I don't know when this was gone over in the lectures.
            raise p "This is not a valid employee or title."
        end    
    end

    def size
        @employees.length
    end
    
    def pay_employee(employee)
        #If the SELF class' funding is greater than the arguments' salary, pay him. Then deduct his salary from the self funding.
        if @funding > @salaries[employee.title]
            employee.pay(@salaries[employee.title])
            @funding -= @salaries[employee.title]
        else
            raise p "Not enough minerals."
        end
    end

    def hire(employee, title)
        if @salaries.include?(title) == true
            @employees << Employee.new(employee, title)
        else
            raise p "This is not a valid employee or title."
        end
    end    

    def size
        @employees.length
    end

    def payday
        @employees.each { |emp| pay_employee(emp) }
    end

    def average_salary
        newSal = @employees.map { |emp| @salaries[emp.title] }
        return (newSal.sum / newSal.length)
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding

        #Cycle through arg's salaries and add them to self. If present, don't add to self.
        startup.salaries.each do |k, v|
            if @salaries.include?(k)
                next
            else
                @salaries[k] = v
            end
        end

        #Fill self employees with argument employees.
        startup.employees.each { |emp| @employees << emp }
        
        startup.close
    end
    

end

