module Trig
    PI = 3.141592654
    def Trig.sin(x)
    puts Math.sin(x)
    end
    def Trig.cos(x)
        puts Math.cos(x)

    end
 end


 module Moral
    VERY_BAD = 0
    BAD = 1
    def Moral.sin(badness)
    if(badness == 1)
        puts "You are very bad"
    else
        puts "You are very good"
    end
    end 
 end

 puts Trig::PI
 puts Trig.sin(0)
 puts Trig.cos(0)
 Moral.sin(Moral::BAD)