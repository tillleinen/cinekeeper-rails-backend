collection :@video_categories
attributes :id, :name, :slug, :image, :play_instantly, :url

child :videos do
  attributes :id, :name, :slug, :vimeo_id, :image
end
