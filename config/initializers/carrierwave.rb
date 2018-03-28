require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['ACCESS_KEY_ID'],
        :aws_secret_access_key => ENV['SECRET_KEY_ID'],
        :region                => 'ap-northeast-1',
    }

    config.fog_directory = 'vegenet'
    config.fog_public = true
  end
else
  CarrierWave.configure do |config|
    config.storage = :file
  end
end
# 日本語入力を可能にするため。
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
