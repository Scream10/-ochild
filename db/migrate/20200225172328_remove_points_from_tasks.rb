class RemovePointsFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :points, :integer
  end
end
