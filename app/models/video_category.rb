# == Schema Information
#
# Table name: video_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_video_categories_on_slug  (slug) UNIQUE
#

class VideoCategory < ActiveRecord::Base
  default_scope { order(:position) }

  has_many :videos, -> { order(:position) }

  mount_uploader :image, ImageUploader
  acts_as_list
end
