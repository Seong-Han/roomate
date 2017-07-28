CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIOGZKAVEY7GEUJIA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'profileup'                          # required
end