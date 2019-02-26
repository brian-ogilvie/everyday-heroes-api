class Level < ApplicationRecord
  has_many :daily_tasks
  has_many :users
end
