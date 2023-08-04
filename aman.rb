# Include statement

require_relative "include.rb"

class Decade
include Week
$no_of_years =10
def no_of_months
    puts Week::First_Day
    number = $no_of_years * 12
    puts "no of months in 10 year " + number.to_s
end
end

obj = Decade.new

puts Week::First_Day 

obj.no_of_months