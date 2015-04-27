# == Schema Information
#
# Table name: videos
#
#  id                :integer          not null, primary key
#  video_category_id :integer
#  name              :string
#  position          :integer
#  image             :string
#  vimeo_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  slug              :string
#
# Indexes
#
#  index_videos_on_slug               (slug) UNIQUE
#  index_videos_on_video_category_id  (video_category_id)
#

class Video < ActiveRecord::Base
  extend FriendlyId
  default_scope { order(:position) }
  
  belongs_to :video_category

  mount_uploader :image, ImageUploader
  acts_as_list scope: :video_category

  friendly_id :name, use: [:slugged, :finders]
end
