class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :screen_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  
  belongs_to :level
  has_many :assignments, dependent: :delete_all
  has_many :daily_tasks, through: :assignments

  has_many :complete_challenges, dependent: :delete_all
  has_many :challenges, through: :complete_challenges

  has_many :user_announcements, dependent: :delete_all
  has_many :announcements, through: :user_announcements

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, confirmation: { case_sensitive: true }, on: :create
  validates :password_confirmation, presence: true, on: :create

  def days_active
    ((Time.now - self[:created_at])/1.day).ceil
  end

  def as_json(options = {})
    super(:only => options[:only] || [:id, :first_name, :last_name, :screen_name, :email, :level_id, :created_at])
  end
end
