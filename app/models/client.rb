# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#  name       :string
#  url        :string
#

class Client < ActiveRecord::Base
  default_scope { order(:position) }

  validates :image, :name, presence: true

  mount_uploader :image, ImageUploader
  acts_as_list
end
