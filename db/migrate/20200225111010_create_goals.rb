class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title
      t.date :end_date
      t.integer :total_points
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
