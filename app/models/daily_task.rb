class DailyTask < ApplicationRecord
  enum element: [:fire, :earth, :metal, :water, :wood]
  belongs_to :level
  belongs_to :heroic_habit
  has_many :assignments
  has_many :users, through: :assignments
end
