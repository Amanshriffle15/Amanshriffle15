class AddColumsToFirst < ActiveRecord::Migration[7.0]
  def change
    add_column :firsts , :date_of_birth, :date
    add_column :firsts , :job_title, :string
  end
end

