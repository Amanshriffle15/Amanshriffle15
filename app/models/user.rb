class User < ApplicationRecord
    enum user_type: {customer: "customer", vendor: "vendor"}

    has_many :products, dependent: :destroy
    # has_many: product_variants, foreign_key: :customer_id
    has_one :cart, foreign_key: "user_id"

end
