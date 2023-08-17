class Vendor < ApplicationRecord
    has_many :products
    
    validates :email, presence: true, uniqueness: true,  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :first_name, :last_name, presence: true
 end