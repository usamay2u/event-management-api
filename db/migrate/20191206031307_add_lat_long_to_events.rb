class AddLatLongToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :lat, :float, default: 0.0
    add_column :events, :lng, :float, default: 0.0
  end
end
