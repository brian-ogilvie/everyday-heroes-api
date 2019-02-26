class HeroicHabit < ApplicationRecord
  enum name: [:power, :balance, :focus, :treasure, :tribe]
  has_many :daily_tasks
end
