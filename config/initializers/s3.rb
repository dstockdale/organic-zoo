attachment_config = {

  s3_credentials: {
    access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    bucket:            ENV['AWS_S3_BUCKET']
  },

  storage:        :s3,
  s3_headers:     { "Cache-Control" => "max-age=31557600" },
  s3_protocol:    "https",
  bucket:         ENV['AWS_S3_BUCKET'],
  url:            ":s3_domain_url",

  path:           "/spree/:class/:id/:style/:basename.:extension",
  default_url:    "/spree/:class/:id/:style/:basename.:extension"
}

attachment_config.each do |key, value|
  Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  Spree::Fairground::Slide.attachment_definitions[:attachment][key.to_sym] = value
end