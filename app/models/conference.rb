class Conference < ApplicationRecord
  belongs_to :event
  has_many :conference_users
  has_many :users, through: :conference_users
  has_one_attached :cover_photo

  validates :venue, :date, :start_time, :end_time, presence: true
end
