class BehindTheScenesPhotosController < ApplicationController
  def index
    @behind_the_scenes_photos = BehindTheScenesPhoto.all
  end
end
