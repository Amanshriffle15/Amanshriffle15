# gfg = catch(:divide) do
#     # a code block of catch similar to begin
#       number = rand(2)
#       throw :divide,1  if number == 0
#       number # set gfg = number if
#       # no exception is thrown
#   end
#   puts gfg

def noNegativeNumbers (number)
    throw :negativeNumberError if number < 0
    puts "Your number is positive!"
end

catch :negativeNumberError do
    
    # noNegativeNumbers(5)
    noNegativeNumbers(-1)
    #exits catch block here
    puts "pradeep"
    # noNegativeNumbers(3)
end
