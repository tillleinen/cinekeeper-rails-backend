CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_KEY'],
      :aws_secret_access_key  => ENV['AWS_SECRET'],
      :region                 => ENV['AWS_REGION']
    }
    config.fog_directory  = ENV['AWS_BUCKET']
    config.aws_attributes = { :cache_control => 'max-age=315576000', :expires => 1.year.from_now.httpdate }
  else 
    config.storage = :file
    config.asset_host = ENV['DEFAULT_HOST']
  end
end