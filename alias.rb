class Cat
    def speak  
        puts "meow"
    end
        alias aman speak
    end
    
    Cat.new.aman
    Cat.new.speak
    
    # alias pr puts
     
    # pr 1