class Riffblob < ActiveRecord::Base
  def childs
    Riffblob.where("pointer=?", self.id)
  end
  belongs_to :user
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

  has_attached_file :file,
  :storage => :dropbox,
  :dropbox_credentials => {
    app_key: ENV["app_key"],
    app_secret: ENV["app_secret"],
    access_token: ENV["access_token"],
    access_token_secret: ENV["access_token_secret"],
    user_id: ENV["user_id"],
    access_type: ENV['access_type']
  }
    # Rails.root.join("config/dropbox.yml")


  #,
  # :styles => { :medium => "300x300>", :thumb => "100x100>" },
  # :default_url => "/assets/riffblobs/:id/:basename.:extension",
  # storage: :s3,
  # s3_credentials: aws_keys,
  # s3_permissions: 'authenticated-read',
  # path: "items/:basename.:extension",
  # s3_server_side_encryption: :aes256
  validates :file,
  attachment_content_type: { content_type: [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]}

  def s3_url(style=nil, expires_in=30.minutes)
    file.s3_object(style).url_for(:read, secure: true, expires: expires_in).to_s
  end

end

# TODO: server side encryption
