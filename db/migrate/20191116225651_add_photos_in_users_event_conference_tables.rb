class AddPhotosInUsersEventConferenceTables < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :profile_cover, :string
    add_column :users, :profile_avatar, :string
    add_column :conferences, :profile_cover, :string
  end
end
