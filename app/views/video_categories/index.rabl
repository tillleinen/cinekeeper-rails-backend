collection :@video_categories
attributes :id, :name, :image

child :videos do
  attributes :id, :name, :image
end
