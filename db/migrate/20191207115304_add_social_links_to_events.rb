class AddSocialLinksToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :facebook, :string
    add_column :events, :youtube, :string
    add_column :events, :twitter, :string
    add_column :events, :linked_in, :string
  end
end
