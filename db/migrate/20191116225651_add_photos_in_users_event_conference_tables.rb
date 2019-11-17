class AddPhotosInUsersEventConferenceTables < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :cover_photo, :string
    add_column :users, :avatar, :string
    add_column :conferences, :cover_photo, :string
  end
end
