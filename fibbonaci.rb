puts "Enter the number"
number = gets.chomp.to_i

i=0
j=1

while i<=number
    puts i
    temp = j
    j= j+i;
    i=temp
end