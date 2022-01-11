class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.references :name_id, null: false, foreign_key: true
      t.integer :week
      t.references :day_id, null: false, foreign_key: true
      t.references :carb_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
