def sample (*test)
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
       puts "The parameters are #{test[i]}"
    end
 end
 sample "Zara", "6", "F"
 sample "Mac", "36", "M", "MCA"

 class Accounts
    def reading_charge
    end
    def Accounts.return_date
        puts "Accounts.return_date  "
    end
 end

 Accounts.return_date