class AddLevelToDailyTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_tasks, :level, foreign_key: true
    add_reference :daily_tasks, :heroic_habit, foreign_key: true
  end
end
