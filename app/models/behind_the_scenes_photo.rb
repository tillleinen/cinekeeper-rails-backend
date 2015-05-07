# == Schema Information
#
# Table name: behind_the_scenes_photos
#
#  id         :integer          not null, primary key
#  image      :string
#  width      :integer
#  height     :integer
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BehindTheScenesPhoto < ActiveRecord::Base
  default_scope { order(:position) }

  validates :image, presence: true
  
  mount_uploader :image, ImageUploader
  acts_as_list
end
