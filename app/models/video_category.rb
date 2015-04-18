class VideoCategory < ActiveRecord::Base
  default_scope { order(:position) }

  has_many :videos, -> { order(:position) }

  mount_uploader :image, ImageUploader
  acts_as_list
end
