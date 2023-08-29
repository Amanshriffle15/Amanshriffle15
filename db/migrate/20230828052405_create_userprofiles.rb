class CreateUserprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :userprofiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :favourite_brand

      t.timestamps
    end
  end
end
