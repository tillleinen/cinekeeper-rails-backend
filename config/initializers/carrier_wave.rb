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
  else 
    config.storage = :file
    config.asset_host = ENV['DEFAULT_HOST']
  end
end