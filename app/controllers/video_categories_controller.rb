class VideoCategoriesController < ApplicationController
  def index
    @video_categories = VideoCategory.all
  end
end
