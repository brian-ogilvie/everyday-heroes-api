class User < ApplicationRecord
  belongs_to :level
  has_many :assignments
  has_many :daily_tasks, through: :assignments
end
