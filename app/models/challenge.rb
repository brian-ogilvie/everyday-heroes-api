class Challenge < ApplicationRecord
  enum category: [:required, :bonus]

  has_many :user_challenges
  has_many :users, through: :user_challenges
  has_many :challenge_habits
  has_many :heroic_habits, through: :challenge_habits

  validates :level_id, presence: true
  validates :title, presence: true
end
