class Employee
    #----Attr Section----
    attr_reader :name, :title
    
    #----Initialize----
    def initialize(name, title)
        @name = name
        @title = title
        @earnings = 0
    end


    def pay(payment)
        @pay = payment
        @earnings += @pay
    end

end
