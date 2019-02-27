class Assignment < ApplicationRecord
  belongs_to :daily_task
  belongs_to :user

  validates :user_id, presence: true
  validates :daily_task_id, presence: true
end
