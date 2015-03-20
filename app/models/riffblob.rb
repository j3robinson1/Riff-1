class Riffblob < ActiveRecord::Base


  attr_accessor :sound_url

  aws_keys = if ['development', 'test'].include?(Rails.env)
    "#{Rails.root}/config/aws-keys.yml"
  else
    {
      bucket: ENV['AWS-BUCKET'],
      access_key_id: ENV['AWS-ACCESSKEY'],
      secret_access_key: ENV['AWS-SECRETKEY']
    }
  end

  has_attached_file :image,
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml")


  #,
  # :styles => { :medium => "300x300>", :thumb => "100x100>" },
  # :default_url => "/assets/riffblobs/:id/:basename.:extension",
  # storage: :s3,
  # s3_credentials: aws_keys,
  # s3_permissions: 'authenticated-read',
  # path: "items/:basename.:extension",
  # s3_server_side_encryption: :aes256
  validates :image,
  attachment_content_type: { content_type: [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]}

  def s3_url(style=nil, expires_in=30.minutes)
    image.s3_object(style).url_for(:read, secure: true, expires: expires_in).to_s
  end

end

# TODO: server side encryption
