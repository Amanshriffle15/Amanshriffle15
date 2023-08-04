# print "Enter your day: "   
# day = gets.chomp   
# case day   
# when "Tuesday"   
#   puts 'Wear Red or Orange'   
# when "Wednesday"   
#   puts 'Wear Green'   
# when "Thursday"   
#   puts 'Wear Yellow'   
#  when "Friday"   
#   puts 'Wear White'   
#  when "Saturday"   
#   puts 'Wear Black'   
# else   
#   puts "Wear Any color"   
# end   

puts "Enter the grades =>"
grades = gets.chomp.to_i
case grades
when 90..100
    puts "A+"
when 80..90
    puts "A"
when 70..80
    puts "B"
when 60..70
    puts "B+"
else
    puts "Fails"
end