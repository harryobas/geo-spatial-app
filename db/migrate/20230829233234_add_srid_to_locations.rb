class AddSridToLocations < ActiveRecord::Migration[6.1]
  def change
    change_column :places, :location, :geometry, geographic: true, srid: 4326
  end
end
