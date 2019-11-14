class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name,    null: false, default: ''
      t.string :last_name,     null: false, default: ''
      t.string :email,         null: false, default: ''
      t.string :phone_number,  null: false, default: ''
      t.string :designation,   null: false, default: ''
      t.string :company_name,  null: false, default: ''
      t.string :type

      t.timestamps
    end
  end
end
