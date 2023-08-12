class RemoveBioFromFirsts < ActiveRecord::Migration[7.0]
  def change
    remove_column :firsts, :bio, :text
  end
end
