class CreateProportions < ActiveRecord::Migration[5.2]
  def change
    create_table :proportions do |t|
      t.integer :percent
      t.references :goal, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
