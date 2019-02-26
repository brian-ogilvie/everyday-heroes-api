class RemoveColumnFromDailyTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :daily_tasks, :points, :integer
  end
end
