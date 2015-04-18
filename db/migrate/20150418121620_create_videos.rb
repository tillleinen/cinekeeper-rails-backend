class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :video_category, index: true, foreign_key: true
      t.string :name
      t.integer :position
      t.string :image
      t.integer :vimeo_id

      t.timestamps null: false
    end
  end
end
