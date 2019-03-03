class AddVideoUrlToHeroicHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :heroic_habits, :url, :string
    add_column :daily_tasks, :url, :string
    remove_column :challenges, :video_url, :string
    add_column :challenges, :url, :string
  end
end
