class AddPlayInstantlyToVideoCategory < ActiveRecord::Migration
  def change
    add_column :video_categories, :play_instantly, :boolean
  end
end
