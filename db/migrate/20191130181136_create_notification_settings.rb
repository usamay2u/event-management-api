class CreateNotificationSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :notification_settings do |t|
      t.string :name
      t.string :description
      t.boolean :email_opt_out
      t.boolean :text_opt_out
      t.boolean :push_opt_out
      t.boolean :default_email
      t.boolean :default_push
      t.boolean :default_text
      t.timestamps
    end
  end
end
