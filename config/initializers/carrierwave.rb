CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJSKD6Z364C72LRPQ',
      :aws_secret_access_key  => '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',
      :region                 => 'ap-northeast-1',
      :path_style             => true,
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  case Rails.env
    when 'production'
      config.fog_directory = 'tentaiapp'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tentaiapp'
    when 'staging'
      config.fog_directory = 'stg.example.com'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/stg.example.com'
    when 'development'
      config.fog_directory = 'tentaiapp-development'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tentaiapp-development'
    when 'test'
      config.fog_directory = 'test.example.com'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.example.com'
  end
end
