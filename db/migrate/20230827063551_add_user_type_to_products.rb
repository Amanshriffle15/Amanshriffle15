class AddUserTypeToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :user_type, :string
  end
end
