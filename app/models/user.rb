class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :screen_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  
  belongs_to :level
  has_many :assignments
  has_many :daily_tasks, through: :assignments

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, confirmation: { case_sensitive: true }
  validates :password_confirmation, presence: true

  def as_json(options = {})
    super(:only => options[:only] || [:id, :first_name, :last_name, :screen_name, :email, :level_id, :created_at])
  end
end
