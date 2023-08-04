# # Import the 'thread' module
# require 'thread'

# # Define a method for each chef to cook a specific dish
# def cook_dish(dish_name)
#   puts "Chef is cooking #{dish_name}..."
#   sleep 2 # Simulate the cooking time
#   puts "#{dish_name} is ready!"
# end

# # Create a thread for each dish being cooked
# dish1_thread = Thread.new { cook_dish('Pasta') }
# dish2_thread = Thread.new { cook_dish('Pizza') }
# dish3_thread = Thread.new { cook_dish('Burger') }

# # Wait for all threads to finish
# dish1_thread.join
# dish2_thread.join
# dish3_thread.join

# puts "All dishes are ready. Enjoy your meal!"


# Import the 'thread' module
# require 'thread'

# # Define a method for each thread to count numbers
# def count_numbers(start, stop)
#   (start..stop).each do |num|
#     puts "Thread #{Thread.current.object_id}: Counting #{num}"
#     sleep 1 # Simulate some processing time
#   end
# end

# # Create two threads to count numbers
# thread1 = Thread.new { count_numbers(1, 5) }
# thread2 = Thread.new { count_numbers(6, 10) }

# # Wait for both threads to finish
# # thread1.join
# # thread2.join

# puts "Counting completed!"


# t =  Thread.new{puts 123}
# puts 12

# t.join
threads = []
Thread.abort_on_exception = false

threads<< Thread.new{puts 123}
threads<<Thread.new{puts 12}
threads<<Thread.new{raise "something happens"}
Pool = 10
sleep(10)
 threads.map(&:join)

