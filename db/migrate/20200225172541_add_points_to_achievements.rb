class AddPointsToAchievements < ActiveRecord::Migration[5.2]
  def change
    add_column :achievements, :points, :integer
  end
end
