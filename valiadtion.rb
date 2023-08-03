module Validation

  # for date validation regular expression
  def valid_date_formate(date)
    /\A\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])\z/.match?(@date)
  end

  # for number validation regular expression
  def vaild_number(amount)
    /^\d+(\.\d+)?$/.match?(@amount.to_s)
  end
  
  # for amount vaildation function
  def vaild_amount(amount)
    count = 0
    while ! vaild_number(@amount)
      count += 1
      if count == 3
        start()
      end
      puts "Amount cannot be empty and should be number."
      puts "Enter the amount spent:"
      @amount = gets.chomp
   end
  end

  # for date validation function
  def vaild_date(date)
    count = 0
    while @date.empty? || !valid_date_formate(@date) 
      count += 1
      if count == 3
        start()
      end
      puts "Date format is invalid. Please enter a date (YYYY-MM-DD):"
      @date = gets.chomp
    end
  end

  # for category validation function
  def vaild_category(category)
    count = 0
    while !/^[a-zA-Z]+$/.match?(@category)      
     count += 1
 
       if count == 3
         start()
       end
       puts "Category cannot be empty and should be a string. Please enter a category:"
       @category = gets.chomp
     end
  end

  # for  index validation function
  def vaild_index(index)
    count = 0
    while index<=0 || index > @expenses.length 
      count += 1
      if count == 3
        start()
      end
      if  index > @expenses.length || index <= 0 
        if @choice == '5'
          puts "Invalid index. Please try again."
          puts "Enter the index of the expense you want to edit:"
          index = gets.chomp.to_i
        else
          puts "Invalid index. Please try again."
          puts "Enter the index of the expense you want to delete:"
          index = gets.chomp.to_i
        end
      end
    end
  end
end





  