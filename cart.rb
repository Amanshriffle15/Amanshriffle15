  # cart.rb
  class Cart
    attr_reader :products
  
    def initialize
      @products = []
    end
  
    def add_product(product)
      @products << product
    end
  
    def total_price
      @products.reduce(0) { |sum, product| sum + product.price }
    end
  
    def clear
      @products.clear
    end
  end