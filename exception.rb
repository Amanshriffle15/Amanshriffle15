# begin 
#     puts "begin"
#     puts 3/1
# rescue
#     puts"error catched"
# else
#     puts"looks good"
# ensure
#     puts "always run"
# end

# begin
#     file = open("demo.txt")
#     if file
#        puts "File opened successfully"
#     end
#  rescue
#        file = STDIN
#  end
#  print file, "==", STDIN, "\n"

# def divider(num1,num2)
#     begin

#         return num1/num2

#         rescue => e
#             puts "you resrcue me"
#     end
# end


# def string_validatior (input)

#     if input.class != String
#         raise StandardError, " I am not a string "
#     end
#     return input
# end

# puts string_validatior(9)

# puts divider(1,2,3)


# begin
#      divider(1,2,3)

#      rescue => e
#         puts e
#         puts "Error name : #{e.class}"
#         puts "Error name : #{e.message}"
#         puts "Error name : #{e.backtrace}"
# end


# raise error

# begin  
#     puts 'I am before the raise.'  
#     raise 'An error has occurred.'  
#     puts 'I am after the raise.'  
#  rescue  
#     puts 'I am rescued.'  
#  end  
#  puts 'I am after the begin block.'  
 

# ensure statement

# begin
#     raise 'A test exception.'
#  rescue Exception => e
#     puts e.message
#     puts e.backtrace.inspect
#  ensure
#     puts "Ensuring execution"
#  end

# else statement

# begin
#     # raise 'A test exception.'
#     puts "I'm not raising exception"
#  rescue Exception => e
#     puts e.message
#     puts e.backtrace.inspect
#  else
#     puts "Congratulations-- no errors!"
#  ensure
#     puts "Ensuring execution"
#  end


# catch and throw

# def promptAndGet(prompt)   
#     print prompt   
#     res = readline.chomp   
#     throw :quitRequested if res == "!"   
#     return res   
#  end   
   
#  catch :quitRequested do   
#     name = promptAndGet("Name: ")   
#     age = promptAndGet("Occupation: ")   
#     # ..   
#     # process information   
#  end   
#  promptAndGet("Name:")  


