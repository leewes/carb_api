class CreateCarbs < ActiveRecord::Migration[7.0]
  def change
    create_table :carbs do |t|
      t.integer :breakfast
      t.integer :lunch
      t.integer :dinner

      t.timestamps
    end
  end
end
