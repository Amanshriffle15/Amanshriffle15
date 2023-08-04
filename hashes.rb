# fruits = {
#     1 => "Apple",
#     2=> "Banana",
#     3=> "Guava",
# }

# newfruits = fruits.invert
# puts newfruits
# fruits.each {|k,v| puts "keys: #{k} value: #{v}"}
# puts fruits
# puts fruits.keys.inspect
# puts fruits.values.inspect
# grades = Hash.new

# grades[10] = "A+"
# grades [9] = "A"
# grades [8] = "B"
# grades.default = "improve"
# puts grades[7]
# puts grades.length
# puts grades.size
# x = grades.to_a
# puts "#{x}"
# puts grades.has_value?("A")
# puts grades.has_key?(10)
# a = Hash.new
# b = Hash.new

# a[0] = 'A'
# b[0] = 'B'

# puts a
# puts b
# puts a==b

# s = "hello world"

# freq = Hash.new

# freq.default = 0

# s.each_char do |val|
#     freq[val]+= 1
# end

# puts freq


names = Hash.new

names["clever"] = "Jones"
names["hot"] = "julia"
names["funky"] = "Adam"
names["sporty"] = "beckham"

# puts names["hot"]

# puts names.fetch("funky")

# puts names.values_at ("clever","sporty")

# names2 = names.dup

# puts names2

# puts names == names2

# puts names.eql?(names2)

# puts names2.empty?

# puts names2.clear

# puts names2.empty?

# names.delete("funky")
 
# names.shift

puts names

myhash = names.merge(people)