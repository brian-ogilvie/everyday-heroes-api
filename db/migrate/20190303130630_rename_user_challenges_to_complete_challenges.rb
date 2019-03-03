class RenameUserChallengesToCompleteChallenges < ActiveRecord::Migration[5.2]
  def change
    rename_table :user_challenges, :complete_challenges
  end
end
