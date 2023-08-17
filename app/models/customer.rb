class Customer < ApplicationRecord
    has_many :carts
    
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :first_name, :last_name, presence: true
  end
  
  
  