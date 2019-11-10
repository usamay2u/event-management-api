class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :verification_code, presence: true, uniqueness: true
end
