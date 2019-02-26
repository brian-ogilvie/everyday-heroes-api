class CreateDailyTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_tasks do |t|
      t.integer :element
      t.integer :points
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
