class CreateConferences < ActiveRecord::Migration[6.0]
  def change
    create_table :conferences do |t|
      t.string :name,         null: false, default: ''
      t.string :description,  null: false, default: ''
      t.string :venue,        null: false, default: ''
      t.date :date
      t.datetime :start_time
      t.datetime :end_time
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
