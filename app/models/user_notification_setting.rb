class UserNotificationSetting < ApplicationRecord
  belongs_to :user
  belongs_to :notification_setting
end
