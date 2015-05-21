class BackgroundImagesController < ApplicationController
  def index
    @background_images = BackgroundImage.all
  end
end
