class User < ApplicationRecord
  has_many :event_users
  has_many :events, through: :event_users
  has_many :conferences, through: :conference_users

  validates :email, presence: true, uniqueness: true
end
