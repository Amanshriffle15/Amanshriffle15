class Student
    def initialize(name)
        @name = name
  
    end

    def print_all
    puts "Name = #{@name}"
    end

end

s1 = Student.new("aman")

s1.print_all