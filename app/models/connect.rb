class Connect < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: 'User'
  belongs_to :link, foreign_key: :link_id, class_name: 'User'
  has_one_attached :business_card

  enum state: { pending: 0, approved: 1, rejected: 2 }
end
