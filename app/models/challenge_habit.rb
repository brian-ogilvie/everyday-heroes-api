class ChallengeHabit < ApplicationRecord
  belongs_to :challenge
  belongs_to :heroic_habit

  validates :challenge_id, presence: true
  validates :heroic_habit_id, presence: true
end
