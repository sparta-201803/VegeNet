if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['ACCESS_KEY_ID'],
        :aws_secret_access_key => ENV['SECRET_KEY_ID'],
        :region                => ENV['REGION'],
    }

    config.fog_directory = ENV['BUCKET_NAME']
    config.fog_public = true
  end
else
  CarrierWave.configure do |config|
    config.storage = :file
  end
end
