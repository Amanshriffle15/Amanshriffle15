require_relative "expense.rb"
require_relative "valiadtion.rb"
require_relative"expense_method.rb"

class Main < Expense

  include Validation
  include ExpenseMethod

 # Function to display the menu and get the user's choice
  def display_menu
    puts "Expense Tracker Menu:"
    puts "1. Add an Expense"
    puts "2. Display Expenses"
    puts "3. Calculate Total Expense"
    puts "4. Filter Expenses by Category"
    puts "5. Edit an Expense"
    puts "6. Delete an Expense"
    puts "7. Search Expenses"
    puts "8. Export File"
    puts "9. Exit"
    puts "Enter your choice (1-9): "

    @choice = gets.chomp
    count = 0
    while @choice.empty?
      count += 1 
      if count == 3
        display_menu()
      end
      puts "Choice cannot be empty. Please enter (1-9): "
      @choice = gets.chomp
    end
   end

    def start
      while 1
        display_menu()
        handle_choice()
        puts "--------------------------------------------------"
      end
  end
end

obj = Main.new
obj.start