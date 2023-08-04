# square = Proc.new { |x| x ** 2 }

# puts square

# lam = lambda { |x| puts x }    #produces a lambda with one argument
# lam.call(2)                    # prints out 2
# lam.call                       # ArgumentError: insufficient arguments (0 for 1)
# lam.call(1,2,3)        #ArgumentError: insufficient arguments (3 for 1)


proc = Proc.new { |x| puts x }  ## creates a procedure with one argument
proc.call(2)                   # prints out 2
proc.call                      # returns nil
proc.call(1,2,3)               # prints 1 and disregards the extra #argument