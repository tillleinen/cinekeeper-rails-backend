class RenameBackgroundImage < ActiveRecord::Migration
  def change
  	rename_table :background_images, :home_videos

  	rename_column :home_videos, :image, :webm_url
  	add_column :home_videos, :mp4_url, :string

  end
end
