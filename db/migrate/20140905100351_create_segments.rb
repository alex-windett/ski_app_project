class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.references :run

      t.timestamps
    end
    add_index :segments, :run_id
  end
end
