class Area
    def initialize(w,h)
        @width,@height = w,h
    end

    def calc
        return "Area : #{@width*@height}"
    end
end

class Sqr <Area
    def calc
         super
        return "Area : #{@width*@height*2}"
    end
end

s = Sqr.new(10,20)

puts s.calc