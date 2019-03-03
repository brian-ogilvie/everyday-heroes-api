class CreateChallengeHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :challenge_habits do |t|
      t.belongs_to :challenge, index: true
      t.belongs_to :heroic_habit, index: true
      t.integer :points

      t.timestamps
    end
  end
end
