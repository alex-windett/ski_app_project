class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.float :elevation
      t.string :description
      t.datetime :marker_created_at
      t.integer :segment_id

      t.timestamps
    end
  end
end
