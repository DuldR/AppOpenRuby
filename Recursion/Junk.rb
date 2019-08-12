# def countdown(n)
#     #Base Case or STOP THE RECURSION
#     if n == 0
#         p "liftoff"
#         return
#     end

#     #Recursive case
#     p n
#     countdown(n-1)

# end

# countdown(10)

#Factorial

# def fact(n)

#     return 1 if n == 1

#     n * fact(n-1)
# end

# p fact(5)

# Fibonnacci

# def fib(n)

#     return 1 if n == 1 || n == 2

#     fib(n-1) + fib(n-2)

# end

# p fib(99)

def arr(n)

    return [n] if !n.kind_of?(Array)

    butts = []

    n.each do |ele|

        butts += arr(ele)
    end

    # if n.kind_of?(Array) == false
    #     butts << n
        
    # else
    #     arr(n[0])
    # end

    butts
    

end


gar = [1, [[2]]]
p arr(gar)
