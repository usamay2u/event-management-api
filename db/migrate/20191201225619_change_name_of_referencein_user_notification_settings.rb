class ChangeNameOfReferenceinUserNotificationSettings < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_notification_settings, :notification_settings_id, :notification_setting_id
  end
end
