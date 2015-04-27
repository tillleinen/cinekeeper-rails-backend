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

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
