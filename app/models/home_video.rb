# == Schema Information
#
# Table name: home_videos
#
#  id         :integer          not null, primary key
#  webm_url   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  mp4_url    :string
#

class HomeVideo < ActiveRecord::Base
  validates :webm_url, presence: true
  validates :mp4_url, presence: true
end
