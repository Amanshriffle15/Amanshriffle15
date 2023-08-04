a = "wow bucky is the graetest"

a.scan(/../) {|b| puts b}
# a.scan(/\S\S\S/) {|b| puts b}

# p a=~ /the/

# p a=~ /the/ ? "valid" : "Invalid"

# p a=~ /he/i ? "valid" : "Invalid"

# line1 = "Cats are smarter than dogs";
# line2 = "Dogs also like meat";

# if ( line1 =~ /Cats(.*)/ )
#    puts "Line1 contains Cats"
# end
# if ( line2 =~ /Cats(.*)/ )
#    puts "Line2 contains  Dogs"
# end