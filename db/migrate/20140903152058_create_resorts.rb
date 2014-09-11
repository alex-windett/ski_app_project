class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.text :description
      t.integer :country_id
      t.text :image

      t.timestamps
    end
  end
end
