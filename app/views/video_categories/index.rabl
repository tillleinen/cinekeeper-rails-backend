collection :@video_categories
attributes :id, :name, :slug, :image

child :videos do
  attributes :id, :name, :slug, :vimeo_id, :image
end
