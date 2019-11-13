class User < ApplicationRecord
  has_many :event_users
  has_many :events, through: :event_users
  has_many :conferences, through: :conference_users

  validates :email, presence: true, uniqueness: true

  scope :verified, -> { joins(:event_users).where("event_users.verified = true") }
  scope :speakers, -> { where(type: 'Speaker') }
  scope :attendees, -> { where(type: 'Attendee') }
  scope :sponsors, -> { where(type: 'Sponsor') }
end
