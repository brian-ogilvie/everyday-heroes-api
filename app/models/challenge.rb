class Challenge < ApplicationRecord
  enum category: [:required, :bonus]

  has_many :complete_challenges
  has_many :users, through: :complete_challenges
  has_many :challenge_habits
  has_many :heroic_habits, through: :challenge_habits

  validates :level_id, presence: true
  validates :title, presence: true
end
