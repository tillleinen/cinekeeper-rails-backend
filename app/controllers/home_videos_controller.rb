class HomeVideosController < ApplicationController
  def index
    @home_videos = HomeVideo.all
  end
end
