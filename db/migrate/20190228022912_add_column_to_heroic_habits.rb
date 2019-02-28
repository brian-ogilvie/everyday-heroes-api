class AddColumnToHeroicHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :heroic_habits, :intro_day, :integer
    remove_column :daily_tasks, :day_released, :integer
  end
end
