class Product < ApplicationRecord
  belongs_to :vendor
  has_many :product_variants, dependent: :destroy

  #   product = Product.find_by(name: product_name).destroy
end
