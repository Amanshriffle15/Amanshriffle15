# created a class for other methods and use in main.rb file

require "csv"

class Expense

  def initialize
    @expenses = []  
  end

  # for filter expense function
  def filter_expense(category)
    
    if @expenses.empty?
      puts "No expenses to filter."
      start()
    end
    
    new_expenses = []
    @expenses.each do |expense|
      if expense[:category] == category
        new_expenses << expense
      end
    end
    if new_expenses.empty?
      puts "No expenses found for the category '#{category}'."
    else
      puts "Filtered Expenses for Category '#{category}':"
      new_expenses.each do |expense|
      puts "Amount: #{expense[:amount]}, Category: #{expense[:category]}, Date: #{expense[:date]}"
      end
    end
  end

  # for edit expense function 
  def edit_expense
    display_expenses
  
    if @expenses.empty?
      puts "No expenses to edit."
      start()
    end
    
    puts "Enter the index of the expense you want to edit:"
    index = gets.chomp.to_i
    vaild_index(index)
    expense = @expenses[index - 1]
  
    puts "Enter the new amount spent:"
    @amount = gets.chomp
    vaild_amount(@amount)
    puts "Enter the new category:"
    @category = gets.chomp
    vaild_category(@category)
    
    puts "Enter the new date (YYYY-MM-DD):"
    @date = gets.chomp
    vaild_date(@date)
    
    expense[:amount] = @amount
    expense[:category] = @category
    expense[:date] = @date
    
    puts "Expense edited successfully!"
  end

 #for claculate expense function
  def calculate_expense
    display_expenses
    puts "--------------------------------------------------"
    total = 0.0
    @expenses.each do |expense|
      total += expense[:amount].to_f
    end
    puts "Total expense: #{total}"
  end
  # Function for search 
  def search_expenses
    display_expenses
    if @expenses.empty?
      puts "No expenses to search."
      start()
    end
    puts "------------------------------------------------------------"
    puts "Enter the  category to search:"
    first_word = gets.chomp.downcase
    
    matching_expenses = @expenses.select do |expense|
      expense[:category].downcase.include?(first_word)
    end
    
    if matching_expenses.empty?
      puts "No expenses found for the category starting with '#{first_word}'."
    else
      puts "Matching Expenses:"
      matching_expenses.each do |expense|
        puts "Amount: #{expense[:amount]}, Category: #{expense[:category]}, Date: #{expense[:date]}"
      end
    end
  end
  #Function for export
  def export_to_csv

    if @expenses.empty?
      puts "No expenses to export."
      start()
    end
      
    print "Enter the file name to save as : "
    file_name = gets.chomp
    
    file_path = "#{file_name}.csv"
    CSV.open(file_path, "w") do |csv|
      csv << ["Amount", "Category", "Date"]
      @expenses.each do |expense|
        csv << [expense[:amount], expense[:category], expense[:date]]
      end
    end
    
    puts "Expenses exported to #{file_path} successfully!"
  end
end
