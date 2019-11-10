class ConferenceUser < ApplicationRecord
  belongs_to :user
  belongs_to :conference
end
