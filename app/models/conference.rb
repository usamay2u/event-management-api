class Conference < ApplicationRecord
  belongs_to :event
  has_many :conference_users
  has_many :users, through: :conference_users

  validates :venue, :date, :start_time, :end_time, presence: true
end
