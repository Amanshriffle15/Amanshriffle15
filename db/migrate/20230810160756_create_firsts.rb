class CreateFirsts < ActiveRecord::Migration[7.0]
  def change
    create_table :firsts do |t|
      t.string :title

      t.timestamps
    end
  end
end
