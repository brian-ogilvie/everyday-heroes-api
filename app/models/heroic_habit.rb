class HeroicHabit < ApplicationRecord
  enum name: [:power, :balance, :focus, :treasure, :tribe]
  has_many :daily_tasks

  has_many :challenge_points
  has_many :challenges, through: :challenge_points
end
