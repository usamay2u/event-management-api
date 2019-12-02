class NotificationSetting < ApplicationRecord
  validates :name, :description, presence: true
  has_many :user_notification_settings
  has_many :users, through: :user_notification_settings
end
