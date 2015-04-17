class VideoCategory < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
