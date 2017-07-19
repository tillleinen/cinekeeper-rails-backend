class AddUrlToVideoCategory < ActiveRecord::Migration
  def change
    add_column :video_categories, :url, :string
  end
end
