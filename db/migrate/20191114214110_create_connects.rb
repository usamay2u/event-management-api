class CreateConnects < ActiveRecord::Migration[6.0]
  def change
    create_table :connects do |t|
      t.integer :user_id
      t.integer :link_id
      t.integer :state
      t.string  :qr_info

      t.timestamps
    end
  end
end
