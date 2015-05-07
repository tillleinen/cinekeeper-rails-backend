# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::ImageOptimizer

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process resize_to_fit: [1200, 800]

  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  process optimize: [{ quality: 80 }]

  version :thumb do
    process :resize_to_fit => [100, 100]
  end

  version :small do
    process :resize_to_fit => [800, 600]
  end

  version :medium do
    process :resize_to_fit => [1200, 900]
  end

  version :large do
    process :resize_to_fit => [2000, 1500]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  process :store_dimensions

  private

  def store_dimensions
    if file && model && model.has_attribute?(:width) && model.has_attribute?(:height)
      model.width, model.height = ::MiniMagick::Image.open(file.file)[:dimensions]
    end
  end

end
