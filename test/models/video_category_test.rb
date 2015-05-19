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

require 'test_helper'

class VideoCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
