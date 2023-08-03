module ExpenseMethod

 # Function for the  menu option
 def handle_choice
   case @choice.to_i
   when 1
    add_expense() 
   when 2
    display_expenses()  
   when 3
    calculate_expense
   when 4
    display_expenses()
    if @expenses.empty?
      puts "No expenses to filter."
      display_menu()
    else
      puts "Enter the category to filter:"
      category = gets.chomp
      filter_expense(category)
    end
   when 5 
    edit_expense()
   when 6
    delete_expense()
   when 7 
    search_expenses
   when 8 
    export_to_csv
   when 9 
    exit
   else
    puts "Invalid choice. Please try again."
   end
 end
    
 # for add expense function
 def add_expense
   puts "Enter the amount spent:"
   @amount = gets.chomp
   vaild_amount(@amount)
      
   puts "Enter the category:"
   @category = gets.chomp
   vaild_category(@category)
       
   puts "Enter the date (YYYY-MM-DD):"
   @date = gets.chomp
   vaild_date(@date)

   expense = { amount: @amount, category: @category, date: @date }
   @expenses << expense
        
   puts "Expense added successfully!"
 end

 # for view expnese function
 def display_expenses
   if @expenses.empty?
    puts "No expenses to display."
   else
    count = 0
     puts "Expense List:"
      @expenses.each do |expense|
        count += 1
        puts "#{count}.Amount: #{expense[:amount]}, Category: #{expense[:category]}, Date: #{expense[:date]}"
     end
   end
 end

 #for delete expense function
 def delete_expense
   display_expenses
  
   if @expenses.empty?
    puts "No expenses to delete."
    start()
   end
    
   puts "Enter the index of the expense you want to delete:"
   index = gets.chomp.to_i
   vaild_index(index)
   @expenses.delete_at(index - 1)
   puts "Expense deleted successfully!"
   
  end
end