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
end
