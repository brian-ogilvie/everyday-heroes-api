class RenameChallengeHabitsToChallengePoints < ActiveRecord::Migration[5.2]
  def change
    rename_table :challenge_habits, :challenge_points
  end
end
