collection :@video_categories
attributes :id, :name, :slug

node :imageSrc do |video_category|
  video_category.image.url
end

child :videos do
  attributes :id, :name, :slug, :vimeo_id
  node :imageSrc do |video|
    video.image.url
  end
end
