require 'aws-sdk'

Aws.config.update(
  region: Rails.configuration.aws_region,
  credentials: Aws::Credentials.new(Rails.application.secrets.aws_access_key_id, Rails.application.secrets.aws_secret_access_key)
)

Aws.use_bundled_cert!
