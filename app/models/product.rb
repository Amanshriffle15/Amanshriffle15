class Product < ApplicationRecord
  has_many :product_variants, dependent: :destroy
  belongs_to :user 
end
