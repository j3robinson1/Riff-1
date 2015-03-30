class Profile < ActiveRecord::Base

  aws_keys = if ['development', 'test'].include?(Rails.env)
    "#{Rails.root}/config/aws-keys.yml"
  else
    {
      bucket: ENV['AWS-BUCKET'],
      access_key_id: ENV['AWS-ACCESSKEY'],
      secret_access_key: ENV['AWS-SECRETKEY']
    }
  end

  has_attached_file :avatar,
   :styles => { :medium => "300x300>", :thumb => "100x100>" },
   :default_url => "/images/:style/missing.png",
   :storage => :dropbox,
    :dropbox_credentials => {
    app_key: ENV["app_key"],
    app_secret: ENV["app_secret"],
    access_token: ENV["access_token"],
    access_token_secret: ENV["access_token_secret"],
    user_id: ENV["user_id"],
    access_type: ENV['access_type']
  }
   validates :avatar,
  attachment_content_type: { content_type: [/\Aimage\/.*\Z/]}
end
