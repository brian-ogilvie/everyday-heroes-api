class Announcement < ApplicationRecord
  has_many :user_announcements, dependent: :delete_all
  has_many :users, through: :user_announcements

  def as_json(options = {})
    super(:only => options[:only] || [:id, :title, :content, :url, :embed_url])
  end
end
