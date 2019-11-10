class CreateConferenceUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :conference_users do |t|
      t.references :user, foreign_key: true
      t.references :conference, foreign_key: true

      t.timestamps
    end
  end
end
