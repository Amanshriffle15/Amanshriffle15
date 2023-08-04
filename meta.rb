# class Person
#     attr_accessor :name, :age
  
#     def initialize(attributes)
#       attributes.each do |key, value|
#         self.class.send(:define_method, key) do
#           instance_variable_get("@#{key}")
#         end
  
#         self.class.send(:define_method, "#{key}=") do |new_value|
#           instance_variable_set("@#{key}", new_value)
#         end
  
#         instance_variable_set("@#{key}", value)
#       end
#     end
#   end
  
#   person = Person.new(name: "John", age: 30)
  
#   puts person.name   # Output: John
#   puts person.age    # Output: 30
  
#   person.name = "Alice"
#   person.age = 25
  
#   puts person.name   # Output: Alice
#   puts person.age    # Output: 25
  

# class String
#   def really?
#     puts "I am really"
#   end
#   def lenght
#     2
#   end
# end

# "hi".really?
# puts "hi".lenght


class Board
  def initialize(text)
    @text = text
  end

  def display
    @text
  end
end 

board = Board.new("oh sh ! ")

require 'pry'
binding.pry

