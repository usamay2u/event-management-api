class CreateApprovedDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :approved_devices do |t|
      t.string :mac_address, null: false, default: ''
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
