# array = (1..10).to_a

# puts (array.map!{|i| i+2})
# puts array


# array.each do |i|
#     puts i+2
# end

# puts array

# numbers = []

# numbers << 1
# numbers << 4
# numbers << 2
# numbers << 3

# puts numbers
# # [1, 2, 3]

# for i in (10.downto(0))
#     puts i
# end

# Ruby program to illustrate each iterator

#!/usr/bin/ruby

# using each iterator
# here collection is range
# variable name is i
# (0..9).each do |i|
	
# 	# statement to be executed
# 	puts i
	
# end

# a = ['G', 'e', 'e', 'k', 's']

# puts "\n"

# # using each iterator
# # here collection is an array
# a.each do|arr|

# 	# statement to be executed
# 	puts arr
	
# end


# Ruby program to illustrate the collect iterator
 
#!/usr/bin/ruby
 
# a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 
# using collect iterator
# printing table of 5
# b = a.collect{ |y| (5 * y) }
# puts b


arr = ["tokyo", "london", "rio"]
puts a = arr.each { |element| element.capitalize }
puts b = arr.map { |element| element.capitalize }