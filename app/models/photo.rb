# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  width      :integer
#  height     :integer
#

class Photo < ActiveRecord::Base
  default_scope { order(:position) }

  mount_uploader :image, ImageUploader
  acts_as_list
end
