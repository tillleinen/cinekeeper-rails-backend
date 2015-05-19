# == Schema Information
#
# Table name: video_categories
#
#  id             :integer          not null, primary key
#  name           :string
#  position       :integer
#  image          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  slug           :string
#  play_instantly :boolean
#
# Indexes
#
#  index_video_categories_on_slug  (slug) UNIQUE
#

class VideoCategory < ActiveRecord::Base
  extend FriendlyId
  default_scope { order(:position) }

  has_many :videos, -> { order(:position) }

  validates :name, :image, presence: true

  mount_uploader :image, ImageUploader
  acts_as_list

  friendly_id :name, use: [:slugged, :finders]
end
