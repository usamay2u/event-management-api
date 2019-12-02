class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :heading
      t.string :subtitle
      t.string :content
      t.boolean :is_read, default: false
      t.string :href
      t.datetime :deleted_at
      t.json :data, default: {}
      t.references :user
      t.timestamps
    end
  end
end
