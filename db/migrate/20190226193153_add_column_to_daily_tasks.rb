class AddColumnToDailyTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_tasks, :day_released, :integer
  end
end
