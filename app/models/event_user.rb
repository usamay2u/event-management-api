class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :verification_code, uniqueness: true
end
