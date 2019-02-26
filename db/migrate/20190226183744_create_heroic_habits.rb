class CreateHeroicHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :heroic_habits do |t|
      t.integer :name

      t.timestamps
    end
  end
end
