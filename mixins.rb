module A
    def a1
        puts " we are method a1 of Module A"
    end
    def a2
        puts " we are method a2 of Module A"
    end

end

module B
    def b1
        puts " we are method b1 of Module B"
    end
    def b2
        puts " we are method b2 of Module B"
    end

end

class Sample
include A
include B
end

obj = Sample.new

obj.a1
obj.b2



