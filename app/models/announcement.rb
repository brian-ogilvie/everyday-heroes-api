class Announcement < ApplicationRecord
  has_many :user_announcements, dependent: :delete_all
  has_many :users, through: :user_announcements
end
