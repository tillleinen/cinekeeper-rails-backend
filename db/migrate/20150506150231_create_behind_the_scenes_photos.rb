class CreateBehindTheScenesPhotos < ActiveRecord::Migration
  def change
    create_table :behind_the_scenes_photos do |t|
      t.string :image
      t.integer :width
      t.integer :height
      t.integer :position

      t.timestamps null: false
    end
  end
end
