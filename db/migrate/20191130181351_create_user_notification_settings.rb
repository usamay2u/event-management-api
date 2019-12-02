class CreateUserNotificationSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_notification_settings do |t|
      t.boolean :email_active
      t.boolean :notification_active
      t.boolean :text_active
      t.references :user
      t.references :notification_settings
      t.timestamps
    end
  end
end
