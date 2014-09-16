class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.string :name
      t.text :description
      t.integer :resort_id
      t.float :rating
      t.integer :user_id

      t.timestamps
    end
    add_attachment :runs, :gpx
  end
end
