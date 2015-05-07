CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :aws
    config.aws_credentials = {
      :access_key_id      => ENV['AWS_KEY'],
      :secret_access_key  => ENV['AWS_SECRET'],
      :region                 => ENV['AWS_REGION']
    }
    config.aws_bucket  = ENV['AWS_BUCKET']
    config.aws_attributes = { :cache_control => 'max-age=315576000', :expires => 1.year.from_now.httpdate }
  else 
    config.storage = :file
    config.asset_host = ENV['DEFAULT_HOST']
  end
end