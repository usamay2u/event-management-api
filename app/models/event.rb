class Event < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users
  has_many :conferences
  has_one_attached :cover_photo

  # validates :code, presence: true, uniqueness: true
  validates :venue, :start_date, :end_date, presence: true
end
