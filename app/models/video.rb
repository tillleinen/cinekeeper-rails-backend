class Video < ActiveRecord::Base
  default_scope { order(:position) }
  
  belongs_to :video_category

  mount_uploader :image, ImageUploader
  acts_as_list scope: :video_category
end
