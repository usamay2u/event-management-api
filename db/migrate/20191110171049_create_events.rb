class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name,         null: false, default: ''
      t.string :code,         null: false, default: ''
      t.string :description,  null: false, default: ''
      t.string :venue,        null: false, default: ''
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
