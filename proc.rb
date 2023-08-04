# proc_object = Proc.new{puts" iam a proc"}

# proc_object.call


# def my_method  (&my_block)

#     puts "hello"
#     my_block.call
# end

# my_method {puts "i am a Proc"}

def method1
puts "Enter your name"
a = gets.chomp


if (a.length<2)
    puts "Invalid name"
else
    puts"You are good to go"
end
end

puts "Enter the choice"

ch = gets.chomp.to_i

while(ch!=0)
   
case ch
    when 1
        
        puts "go to new method"
        method1
    when 2
        puts "go to 2 method"
    when 3
        puts "go to 3 method"
        
    else
        puts "Invalid input"
       
end
   # Prompt for next choice
   puts "Enter the choice"
   ch = gets.chomp.to_i
 
   # Add a condition to break the loop
   break if ch == 0

end




# def valid_email(email)
#     email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
#     email =~ email_regex
# end

# email = "test@example.com"
# if (email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
#   puts "Valid email"
# else
#   puts "Invalid email"
# end