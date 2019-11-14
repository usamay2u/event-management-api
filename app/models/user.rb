class User < ApplicationRecord
  has_many :event_users
  has_many :events, through: :event_users

  has_many :conference_users
  has_many :conferences, through: :conference_users

  has_many :connects, foreign_key: :user_id
  has_many :links, through: :connects, source: :link

  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :company_name, :designation, presence: true

  scope :verified, -> { joins(:event_users).where("event_users.verified = true") }
  scope :speakers, -> { where(type: 'Speaker') }
  scope :attendees, -> { where(type: 'Attendee') }
  scope :sponsors, -> { where(type: 'Sponsor') }

  def name
    "#{first_name} #{last_name}"
  end
end
