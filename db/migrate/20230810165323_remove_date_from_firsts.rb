class RemoveDateFromFirsts < ActiveRecord::Migration[7.0]
  def change
    remove_column :firsts, :date_of_joining, :string
  end
end
