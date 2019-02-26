class AddHeroicHabitToLevel0Points < ActiveRecord::Migration[5.2]
  def change
    add_reference :level0_points, :heroic_habit, foreign_key: true
  end
end
