# == Schema Information
#
# Table name: background_images
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BackgroundImage < ActiveRecord::Base
  validates :image, presence: true
  
  mount_uploader :image, ImageUploader
end
