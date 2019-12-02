# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.where(email: 'admin@eventmanagement.com').first_or_create!(password: 'aDm1n@managment', password_confirmation: 'aDm1n@managment')

NotificationSetting.where(name: 'user_connection' , description: 'Someone wants to connect with you.').first_or_create!
NotificationSetting.where(name: "user_connection").first.update(email_opt_out: true, text_opt_out: true, push_opt_out: true, default_email: true, default_text: false, default_push: true)

n1 = NotificationSetting.where(name: 'user_connection').first

User.find_each do |user|
    NotificationSetting.find_each do |setting|
      UserNotificationSetting.create!(user_id: user.id , notification_setting_id: setting.id , email_active: setting.default_email, notification_active: setting.default_push , text_active: setting.default_text )
    end
    user.user_notification_settings << UserNotificationSetting.create!(user_id: user.id , notification_setting_id: n1.id , email_active: n1.default_email, notification_active: n1.default_push , text_active: n1.default_text )
end

UserNotificationSetting.find_each do |setting|
    setting.update(email_active: setting.notification_setting.default_email, notification_active: setting.notification_setting.default_push , text_active: setting.notification_setting.default_text)
end
