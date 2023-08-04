class Book
    attr_accessor :title, :author, :quantity
  
    def initialize(title, author, quantity)
      @title = title
      @author = author
      @quantity = quantity
    end
  end
  
  class Library
    def initialize
      @books = []
    end
  
    def add_book
      puts "Enter book title:"
      title = gets.chomp
  
      puts "Enter author name:"
      author = gets.chomp
  
      puts "Enter quantity:"
      quantity = gets.chomp.to_i
  
      book = Book.new(title, author, quantity)
      @books << book
  
      puts "Book added successfully!"
    end
  
    def display_books
      if @books.empty?
        puts "No books available in the library."
      else
        puts "Books in the library:"
        @books.each_with_index do |book, index|
          puts "#{index + 1}. #{book.title} by #{book.author} (Quantity: #{book.quantity})"
        end
      end
    end
  
    def edit_book
      display_books
      return if @books.empty?
  
      puts "Enter the index of the book to edit:"
      index = gets.chomp.to_i - 1
  
      if index < 0 || index >= @books.length
        puts "Invalid index!"
      else
        book = @books[index]
  
        puts "Enter new book title (#{book.title}):"
        title = gets.chomp
  
        puts "Enter new author name (#{book.author}):"
        author = gets.chomp
  
        puts "Enter new quantity (#{book.quantity}):"
        quantity = gets.chomp.to_i
  
        book.title = title unless title.empty?
        book.author = author unless author.empty?
        book.quantity = quantity unless quantity.zero?
  
        puts "Book updated successfully!"
      end
    end
  
    def delete_book
      display_books
      return if @books.empty?
  
      puts "Enter the index of the book to delete:"
      index = gets.chomp.to_i - 1
  
      if index < 0 || index >= @books.length
        puts "Invalid index!"
      else
        book = @books[index]
        @books.delete(book)
        puts "Book deleted successfully!"
      end
    end
  
    def run
      loop do
        puts "\nLibrary Management System"
        puts "1. Add Book"
        puts "2. Display Books"
        puts "3. Edit Book"
        puts "4. Delete Book"
        puts "5. Exit"
        print "Enter your choice (1-5): "
  
        choice = gets.chomp.to_i
  
        case choice
        when 1
          add_book
        when 2
          display_books
        when 3
          edit_book
        when 4
          delete_book
        when 5
          break
        else
          puts "Invalid choice! Please try again."
        end
      end
    end
  end
  
  library = Library.new
  library.run