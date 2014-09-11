class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :image
      t.string :video
      t.integer :user_id
      t.integer :run_id

      t.timestamps
    end
  end
end
