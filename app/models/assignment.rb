class Assignment < ApplicationRecord
  belongs_to :daily_task
  belongs_to :user
end
