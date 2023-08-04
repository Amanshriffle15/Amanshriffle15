# class Person 
#     attr_accessor:name,:age

# end

# class Sport<Person
#     attr_accessor:sports
# end

# s= Sport.new
# s.age = 10
# s.name = "Aman"
# s.sports = "Football"

# puts s.name

class Animal
    def initialize(name,colour)
        @name,@colour = name,colour
    end
end

class Cat<Animal
    def speak 
        puts "meaoow"
    end
end

cat = Cat.new("gagan","Green")

puts cat.inspect
puts cat.speak
