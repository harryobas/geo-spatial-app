class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.geometry :location, geographic: true

      t.timestamps
    end
    add_index :places, :location, using: :gist
  end
end
