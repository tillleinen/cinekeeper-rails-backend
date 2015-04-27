class AddSlugToVideoCategory < ActiveRecord::Migration
  def change
    add_column :video_categories, :slug, :string
    add_index :video_categories, :slug, unique: true
  end
end
