class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.references :users, null: false, foreign_key: true
      t.integer :week
      t.references :days, null: false, foreign_key: true
      t.references :carbs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
