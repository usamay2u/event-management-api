class User < ApplicationRecord
  has_many :event_users, dependent: :destroy
  has_many :events, through: :event_users

  has_many :conference_users, dependent: :destroy
  has_many :conferences, through: :conference_users

  has_many :connects, foreign_key: :user_id
  has_many :links, through: :connects, source: :link

  has_one_attached :avatar

  accepts_nested_attributes_for :event_users, allow_destroy: true, reject_if: :all_blank

  validates :email, presence: true, uniqueness: true
  validates :company_name, :designation, presence: true
  # validates_format_of :phone_number, with: /\d[0-9]\)*\z/ , message: "phone number is not vailid", allow_nil: true

  validates :avatar, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
             size: { less_than: 1.megabytes , message: 'Image Should be less than 1 mb' }

  scope :verified, -> { joins(:event_users).where("event_users.verified = true") }
  scope :speakers, -> { where(type: 'Speaker') }
  scope :attendees, -> { where(type: 'Attendee') }
  scope :sponsors, -> { where(type: 'Sponsor') }

  def name
    "#{first_name} #{last_name}"
  end
end
