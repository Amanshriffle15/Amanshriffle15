class ProductVariant < ApplicationRecord
  belongs_to :product
  has_many :carts
  
  validates :length, :width, presence: true, numericality: true
end
