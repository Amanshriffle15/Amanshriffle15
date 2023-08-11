class AddColumToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :surname, :string
  end
end
