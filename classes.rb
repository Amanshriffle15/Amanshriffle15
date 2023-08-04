# class Myclass
#     # def initialize(w,h)
#     #     @witdh,@height = w,h
#     # end
#     def set(w,h)
#         @witdh,@height = w,h
#     end
#     def Print_something
#         puts @witdh,@height
#     end
# end

# obj = Myclass.new
# obj.set 10,20
# puts(obj.Print_something)

# shortcut for getter and settter

class Myclass
    #setter
    # attr_writer:name,:age
    #getter
    # attr_reader:name,:age

    #setter and getter both

    attr_accessor:name,:age

    def to_s
    puts "my name #{name} and my age #{age}"
    end


end

obj = Myclass.new

obj.name = "aman"
obj.age = 12

puts obj.name
puts obj.age


puts obj
puts "#{obj}"



# class Aman

#     @@count =0
#     def initialize(w,h)
#         @width,@height = w,h 
#         @@count += 1
#     end
#     def print
#         puts"#{@width}"
#         puts "#{@height}"
#         puts"#{@@count}"
#     end
# end

# obj = Aman.new(10,20)
# obj1 = Aman.new(20,30)

# puts obj.print
# puts obj1.print