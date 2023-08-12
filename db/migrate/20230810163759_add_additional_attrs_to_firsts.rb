class AddAdditionalAttrsToFirsts < ActiveRecord::Migration[7.0]
  def change
    add_column :firsts, :date_of_joining, :date
    add_column :firsts, :bio, :text
  end
end
