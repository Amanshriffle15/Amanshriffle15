class User < ApplicationRecord
    enum user_type: { customer: 'customer', vendor: 'vendor' }

    validates :email, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_type, presence: true
  
    has_many :products, dependent: :destroy
    has_one :user_profile 
end

