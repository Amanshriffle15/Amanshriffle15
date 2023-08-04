# user.rb
class User
    attr_reader :username
  
    def initialize(username, password)
      @username = username
      @password = password
      @cart = Cart.new
    end
  
    def authenticate(username, password)
      @username == username && @password == password
    end
  
    def cart
      @cart
    end
  end
  